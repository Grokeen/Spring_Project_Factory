package KIC1_controller;

import java.util.List; 

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import KIC1_model.Reservation;
import KIC1_model.Review;
import KIC1_service.ManagementMybatis;

@Controller
@RequestMapping("/admit/")
public class AdminReservationController {

	HttpServletRequest request;
	Model m;
	HttpSession session;
	
	
	@Autowired
	ManagementMybatis dao;
	
	@ModelAttribute
	   void init(HttpServletRequest request, Model m) {
	      this.request = request;
	      this.m = m;
	      this.session = request.getSession();
	   }
	@RequestMapping("adminpage")			//딜리트
	public String adminpage() {		//List->ArrayList로변경
		
		
		return "/admin/adminpage";
	}
	@RequestMapping("adminReservationpage")
	public String adminReservationpage(){
		
	
		//스프링에서 필요유무
		//예약리스트받음
		List<Reservation> adminlist1 =dao.reservelist();


		m.addAttribute("adminlist1", adminlist1);
		
		
		return "/admin/MaReserveListMain";
	}
	
	
	@RequestMapping("deletereserve")			
	public String deletereserve() {		
	// ----------딜리트 확인
		dao.deletereserve();
		List<Reservation> adminlist1 = dao.reservelist();
		m.addAttribute("adminlist1",adminlist1);
		
		
		return "/admin/MaReserveListMain";
	}	
	
	@RequestMapping("adminlist") // /board/list
	public String adminlist() {
		
		if (request.getParameter("pageNum") != null) {
			session.setAttribute("pageNum", request.getParameter("pageNum"));
		}
		

		String pageNum = (String) session.getAttribute("pageNum");
		if (pageNum == null)
			pageNum = "1";
		int pageInt = Integer.parseInt(pageNum);

		int limit = 10; // 한페이지에 출력할 게시물 건수
		// int con = dao.con();
		int reviewcount = dao.reviewCount();// 등록된 전체 게시물의 건수
		/*
		 * pageInt-현재 페이지 넘버, limit-한페이지에 출력할 게시물 건수 boardcount--등록된 전체 게시물의 건수
		 * cafenum-공지사항(1),자유게시판(2), QnA(3)
		 */
		List<Review> list = dao.list(pageInt, limit, reviewcount); // 화면에 출력된 게시물 데이터
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

		// ReviewMybatisDao dao = new ReviewMybatisDao();
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

		// 게시판 제목
		// m.addAttribute("reviewName", getreviewName(cafenum)); //게시판 제목 (공지시항, 자유게시판,
		// QnA)

		return "admin/MaReviewListMain";
	}

	@RequestMapping("admininfo")
	public String admininfo(int reviewnum) {
		/*
		 * : 게시물 상세 보기 :board/info?num=41
		 * 
		 * 1. num 파라미터를 이용하여 db에 해당 게시물 조회 Board board = new BoardDao().selectOne(num);
		 * 2. 조회수 증가시키기. readcnt+1 new BoardDao().readcntadd(num);
		 * 
		 * 3. 1번에서 조회한 게시물데이터를 화면에 출력하기
		 */

		Review review = dao.selectOne(reviewnum); // 게시물 조회
		// System.out.println("review======"+review);
		dao.readcntadd(reviewnum); // 조회건수증가
		m.addAttribute("review", review);
		
//		if (cafenum == null)  	cafenum = "1";
//		m.addAttribute("reviewName", getReviewName(cafenum));

		return "admin/MaReviewListInfo";
	}

	@RequestMapping("deletereview")
	public String deletereview(int reviewnum) {
		
		dao.deletereview(reviewnum);
		
		if (request.getParameter("pageNum") != null) {
			session.setAttribute("pageNum", request.getParameter("pageNum"));
		}
		

		String pageNum = (String) session.getAttribute("pageNum");
		if (pageNum == null)
			pageNum = "1";
		int pageInt = Integer.parseInt(pageNum);

		int limit = 10; // 한페이지에 출력할 게시물 건수

		int reviewcount = dao.reviewCount();// 등록된 전체 게시물의 건수
		
		List<Review> list = dao.list(pageInt, limit, reviewcount); // 화면에 출력된 게시물 데이터
		
		int maxpage = (int) (reviewcount / limit) + (reviewcount % limit == 0 ? 0 : 1);
		int bottomLine = 3;
		
		int startpage = 1 + (pageInt - 1) / bottomLine * bottomLine;
		int endpage = startpage + bottomLine - 1;
		if (endpage > maxpage)
			endpage = maxpage;
		int reviewnum2 = reviewcount - (pageInt - 1) * limit; // 100개 1:100, 2:90, 3:80
		
		m.addAttribute("reviewcount", reviewcount); // 등록된 전체 게시물의 건수
		m.addAttribute("list", list); // 프린트한 게시물
		m.addAttribute("reviewnum", reviewnum2); // 게시물 시작번호
		m.addAttribute("pageNum", pageNum); // 현재 페이지 번호

		// 하단 paging
		m.addAttribute("startpage", startpage); // 하단 시작 페이지
		m.addAttribute("endpage", endpage); // 하단 end 페이지
		m.addAttribute("bottomLine", bottomLine); // 하단 화면당 페이지 보기
		m.addAttribute("maxpage", maxpage); // 총 페이지수
		
		return "admin/MaReviewListMain";
	}
	
	@RequestMapping("adminsearch")
	public String adminsearch(String guesttel){
		//스프링에서 필요유무
		//예약리스트받음	
		System.out.println(guesttel);
		List<Reservation> searchlist = dao.adminsearch(guesttel);
		m.addAttribute("adminlist1",searchlist);
		
		return "/admin/MaReserveListMain";
	}
	//*************리뷰검색
	@RequestMapping("adminreviewsearch")
	public String adminreviewsearch(int reviewNum){
		//스프링에서 필요유무
		//예약리스트받음	
		/*
		 * List<Review> searchlist2 = dao.adminsearch2(reviewnum);
		 * m.addAttribute("searchlist2",searchlist2);
		 */
		if (request.getParameter("pageNum") != null) {
			session.setAttribute("pageNum", request.getParameter("pageNum"));
		}
		

		String pageNum = (String) session.getAttribute("pageNum");
		if (pageNum == null)
			pageNum = "1";
		int pageInt = Integer.parseInt(pageNum);

		int limit = 10; // 한페이지에 출력할 게시물 건수
		// int con = dao.con();
		int reviewcount = dao.reviewCount();// 등록된 전체 게시물의 건수
		/*
		 * pageInt-현재 페이지 넘버, limit-한페이지에 출력할 게시물 건수 boardcount--등록된 전체 게시물의 건수
		 * cafenum-공지사항(1),자유게시판(2), QnA(3)
		 */
		List<Review> list = dao.adminsearch2(reviewNum); // 화면에 출력된 게시물 데이터
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

		// ReviewMybatisDao dao = new ReviewMybatisDao();
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

		// 게시판 제목
		// m.addAttribute("reviewName", getreviewName(cafenum)); //게시판 제목 (공지시항, 자유게시판,
		// QnA)

		return "/admin/MaReviewListMain";
	}
}
