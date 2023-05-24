package KIC1_controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import KIC1_model.Cafe;
import KIC1_model.Reservation;
import KIC1_model.Review;
import KIC1_service.ReservationMybatis;
import KIC1_service.ReviewMybatisDao;

@Controller
@RequestMapping("/review/")
public class ReviewController {

	HttpServletRequest request;
	Model m;
	HttpSession session;

	@Autowired
	ReviewMybatisDao dao;

	@Autowired
	ReservationMybatis rdao;

	@ModelAttribute
	void init(HttpServletRequest request, Model m) {
		this.request = request;
		this.m = m;
		this.session = request.getSession();
	}

	@RequestMapping("list")
	public String list() {

		if (request.getParameter("pageNum") != null) {
			session.setAttribute("pageNum", request.getParameter("pageNum"));
		}

		String pageNum = (String) session.getAttribute("pageNum");
		if (pageNum == null)
			pageNum = "1";

		int pageInt = Integer.parseInt(pageNum);

		if (request.getParameter("cafenum") != null) {
			session.setAttribute("cafenum", request.getParameter("cafenum"));
		}
		String cafenum = (String) session.getAttribute("cafenum");
		if (cafenum == null)
			cafenum = "100";

		int cafeNum = Integer.parseInt(cafenum);
		int limit = 10; // 한페이지에 출력할 게시물 건수

		int reviewcount = dao.reviewCount(cafenum);// 등록된 전체 게시물의 건수

		List<Review> list = dao.list(pageInt, limit, reviewcount, cafenum); // 화면에 출력된 게시물 데이터
		// 13 ---> boardcount/limit : 4 + 1
		// -----------paging 작업
		int maxpage = (int) (reviewcount / limit) + (reviewcount % limit == 0 ? 0 : 1);
		int bottomLine = 3;
		// page 1,2,3 : 1, 4,5,6: 2
		int startpage = 1 + (pageInt - 1) / bottomLine * bottomLine;
		int endpage = startpage + bottomLine - 1;
		if (endpage > maxpage)
			endpage = maxpage;
		int reviewnum = reviewcount - (pageInt - 1) * limit; // 100개 1:100, 2:90, 3:80
		// -----------paging 작업
		String cafename= "";
		if(cafeNum == 100) {
			cafename = "";
		}else {
			cafename = rdao.cafeSelectOne(cafeNum).getCafename();
		}
		
		// print list
		m.addAttribute("reviewcount", reviewcount); // 등록된 전체 게시물의 건수
		m.addAttribute("list", list); // 프린트한 게시물
		m.addAttribute("reviewnum", reviewnum); // 게시물 시작번호
		m.addAttribute("pageNum", pageNum); // 현재 페이지 번호

		// 하단 paging
		m.addAttribute("startpage", startpage); // 하단 시작 페이지
		m.addAttribute("endpage", endpage); // 하단 end 페이지
		m.addAttribute("bottomLine", bottomLine); // 하단 화면당 페이지 보기
		m.addAttribute("maxpage", maxpage); // 총 페이지수

		m.addAttribute("cafename",cafename);
		m.addAttribute("cafenum", cafenum);
		
		return "review/list";
	}

	@RequestMapping("conForm")
	public String conForm(String cafenum) {

		m.addAttribute("cafenum", cafenum);
		if (cafenum.equals("100")) {
			return "review/writeForm";
		}
		return "review/reviewCon";
	}

	@RequestMapping("reviewCon")
	public String reviewCon(String cafenum) {

		m.addAttribute("reviewCon", cafenum);
		return "review/reviewCon";
	}

	@RequestMapping("con")
	public String con(Reservation reservation) {
		String guesttel = reservation.getGuesttel();
		String guestpass = reservation.getGuestpass();
		int cafenum = reservation.getCafenum();

		List<Reservation> reserve = dao.con(guesttel, guestpass, cafenum);

		String msg = "방문하신적이 없거나 방문하신지 30일 이상되셨다면 리뷰를 작성할 수 없습니다.";
		String url = "review/reviewCon";

		if (!reserve.isEmpty()) {
			m.addAttribute("cafenum", cafenum);
			m.addAttribute("guesttel", guesttel);
			m.addAttribute("guestpass", guestpass);
			return "review/writeForm";
		} else {
			m.addAttribute("msg", msg);
			m.addAttribute("url", url);
			return "alert";
		}
	}

	@RequestMapping("writeForm")
	public String writeForm() {
		String cafenum = (String) session.getAttribute("cafenum");
		String guesttel = (String) session.getAttribute("guesttel");
		return "review/writeForm";
	}

	@RequestMapping("writePro")
	public String writePro(Review review) {
//		System.out.println("=========writePro");
//		System.out.println(review);
		String uploadpath = request.getServletContext().getRealPath("/") + "upfile";
//		System.out.println(uploadpath);

		MultipartFile multipartFile = review.getF();

		if (!multipartFile.isEmpty()) {
			File file = new File(uploadpath, multipartFile.getOriginalFilename());
			try {
				multipartFile.transferTo(file);
				review.setFile1(multipartFile.getOriginalFilename());
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			review.setFile1(" ");
		}

		String msg = "등록 실패";
		String url = "review/writeForm";

		if (dao.insert(review)) {
			msg = "등록 성공";
			url = "review/list";
		}
		m.addAttribute("msg", msg);
		m.addAttribute("url", url);
		return "alert";
	}

	@RequestMapping("update")
	public String update(Review review) {
		String uploadpath = request.getServletContext().getRealPath("/") + "upfile";
		MultipartFile multipartFile = review.getF();
		if (!multipartFile.isEmpty()) {
			File file = new File(uploadpath, multipartFile.getOriginalFilename());
			try {
				multipartFile.transferTo(file);
				review.setFile1(multipartFile.getOriginalFilename());
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		Review dbReview = dao.selectOne(review.getReviewnum());
		String msg = "전화번호, 비밀번호를 다시 확인해 주세요";
		String url = "review/updateForm?reviewnum=" + review.getReviewnum();
		if (review.getGuesttel().equals(dbReview.getGuesttel())) {
			// 수정하기
			if (dao.update(review)) {
				msg = "수정 완료.";
				url = "review/list";
			} else {
				msg = "수정 실패";
			}
		}
		m.addAttribute("url", url);
		m.addAttribute("msg", msg);
		return "alert";
	}

	@RequestMapping("info")
	public String info(int reviewnum) {

		Review review = dao.selectOne(reviewnum); // 게시물 조회
		dao.readcntadd(reviewnum); // 조회건수증가
		m.addAttribute("review", review);
		String cafenum = (String) request.getSession().getAttribute("cafenum");

		return "review/info";
	}

	@RequestMapping("updateForm")
	public String updateForm(int reviewnum) {

		Review review = dao.selectOne(reviewnum);
		request.setAttribute("review", review);
		return "review/updateForm";
	}

	@RequestMapping("deleteForm")
	public String deleteForm(int reviewnum) {
		m.addAttribute("reviewnum", reviewnum);
		return "review/deleteForm";
	}

	@RequestMapping("delete")
	public String delete(int reviewnum, String guesttel) {

		String msg = "예약번호가 틀렸습니다";
		String url = "review/deleteForm?reviewnum=" + reviewnum;
		Review review = dao.selectOne(reviewnum);
		// board.getPass() : db에 저장된 비밀번호
		if (guesttel.equals(review.getGuesttel())) {
			if (dao.delete(reviewnum)) {
				msg = "삭제 완료.";
				url = "review/list";
			} else {
				msg = "삭제하는데 실패했습니다.";
				url = "review/info?reviewnum=" + reviewnum;
			}
		}

		m.addAttribute("url", url);
		m.addAttribute("msg", msg);

		return "alert";
	}

	@RequestMapping("searchReview")
	public String searchReview(String name,String cafenum) {
		
		
		
		if (request.getParameter("pageNum") != null) {
			session.setAttribute("pageNum", request.getParameter("pageNum"));
		}

		String pageNum = (String) session.getAttribute("pageNum");
		if (pageNum == null)
			pageNum = "1";

		int pageInt = Integer.parseInt(pageNum);
		
		int limit = 10; // 한페이지에 출력할 게시물 건수

		int reviewcount = dao.reviewCount(cafenum);// 등록된 전체 게시물의 건수

		List<Review> list = dao.searchReview(name,cafenum); // 화면에 출력된 게시물 데이터
		// 13 ---> boardcount/limit : 4 + 1
		// -----------paging 작업
		int maxpage = (int) (reviewcount / limit) + (reviewcount % limit == 0 ? 0 : 1);
		int bottomLine = 3;
		// page 1,2,3 : 1, 4,5,6: 2
		int startpage = 1 + (pageInt - 1) / bottomLine * bottomLine;
		int endpage = startpage + bottomLine - 1;
		if (endpage > maxpage)
			endpage = maxpage;
		int reviewnum = reviewcount - (pageInt - 1) * limit; // 100개 1:100, 2:90, 3:80
		// -----------paging 작업

		// print list
		m.addAttribute("reviewcount", reviewcount); // 등록된 전체 게시물의 건수
		m.addAttribute("list", list); // 프린트한 게시물
		m.addAttribute("reviewnum", reviewnum); // 게시물 시작번호
		m.addAttribute("pageNum", pageNum); // 현재 페이지 번호

		// 하단 paging
		m.addAttribute("startpage", startpage); // 하단 시작 페이지
		m.addAttribute("endpage", endpage); // 하단 end 페이지
		m.addAttribute("bottomLine", bottomLine); // 하단 화면당 페이지 보기
		m.addAttribute("maxpage", maxpage); // 총 페이지수

		m.addAttribute("cafenum", cafenum);
		
		return "review/list";
		
	}
	

	@RequestMapping("replyForm")
	public String replyForm(int num) {
		/*
		 * 답변글 쓰기 화면 1. 원글의 num을 파라미터로 받는다. 2. 원글의 num,ref,reflevel,refstep 정보를 저장 3. 입력
		 * 화면 표시
		 */
		Review review = dao.selectOne(num); // 게시물 조회
		m.addAttribute("review", review);
		String cafenum = (String) request.getSession().getAttribute("cafenum");
		if (cafenum == null)
			cafenum = "1";
		return "review/replyForm";
	}

	@RequestMapping("replyPro")
	public String replyPro(Review review) {
		int cafenum = (Integer) request.getSession().getAttribute("cafenum");
		review.setFile1("");
		review.setCafenum(cafenum);
		dao.refstepadd(review.getRef(), review.getRefstep());
		// 3. Review 객체를 db에 insert 하기.
		String msg = "답변등록시 오류발생";
		String url = "review/replyForm?num=" + review.getReviewnum();
		if (dao.insert(review)) {
			msg = "답변등록 완료";
			url = "review/list";
		}
		m.addAttribute("url", url);
		m.addAttribute("msg", msg);
		return "alert";
	}

}
