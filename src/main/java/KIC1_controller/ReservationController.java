package KIC1_controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import KIC1_model.Cafe;
import KIC1_model.Menu;
import KIC1_model.Reservation;
import KIC1_model.Review;
import KIC1_service.ReservationMybatis;
import KIC1_service.ReviewMybatisDao;

@Controller
@RequestMapping("/reservation/")
public class ReservationController {

	HttpServletRequest request;
	Model m;
	HttpSession session;

	@Autowired
	ReviewMybatisDao rdao;

	@Autowired
	ReservationMybatis dao;

	@ModelAttribute
	void init(HttpServletRequest request, Model m) {
		this.request = request;
		this.m = m;
		this.session = request.getSession();
	}

	/* 연결3 */
	@RequestMapping("cafeInfo")
	public String cafeInfo(int cafenum) {

		Cafe cafe = dao.cafeSelectOne(cafenum);
		List<Menu> menuList = dao.MenuList(cafenum);
		
		double avgScore = Math.round(rdao.avgScore(cafenum)*10/10);
		
		String cafeNum = String.valueOf(cafenum);
		session.setAttribute("cafenum",cafeNum);
		
		m.addAttribute("cafe", cafe);
		m.addAttribute("menuList",menuList);
		m.addAttribute("avgScore",avgScore);

		return "reservation/cafe";
	}

	/* 연결1 */
	@RequestMapping("search")
	public String search() {
		
		
		return "reservation/searchkind";

	}
	
	@RequestMapping("searchPro2")
	public String searchPro2(String kind) {
		
		m.addAttribute("kind",kind);
		
		return "reservation/searchlocation";

	}

	/* 연결2 */
	@RequestMapping("searchPro")
	public String searchPro(String location, String kind) {

		List<Cafe> cafeList = dao.cafeList(kind, location);

		m.addAttribute("cafeList",cafeList);

		return "reservation/searchList";

	}

	@RequestMapping("reservation")
	public String reservation(String cafenum) {

		m.addAttribute("cafenum", cafenum);

		return "reservation/reservation";
	}

	@RequestMapping("main")
	public String main() {

		return "reservation/main";
	}

	/* 연결4 */
	@RequestMapping("reservationPro")
	public String reservationPro(Reservation reservation) {

		int reservenum = dao.reserveInsert(reservation);
		
		String cafename = dao.cafeSelectOne(reservation.getCafenum()).getCafename();
		Reservation reserve = dao.reserveSelectOne(reservenum);
		m.addAttribute("reservation", reserve);
		m.addAttribute("cafename", cafename);

		return "reservation/reservationConfirm";

	}

	@RequestMapping("reservationConfirm")
	public String reservationConfirm(String cafenum, int reservenum) {
		
		int cafeNum = Integer.parseInt(cafenum);
		String cafename = dao.cafeSelectOne(cafeNum).getCafename();
		Reservation reserve = dao.reserveSelectOne(reservenum);
		m.addAttribute("reservation", reserve);
		m.addAttribute("cafename", cafename);

		return "reservation/reservationConfirm";
	}

	@RequestMapping("sendMSG")
	public String sendMSG(String reservationnum) {

		int reservenum = Integer.parseInt(reservationnum);

		Reservation reserve = dao.reserveSelectOne(reservenum);
		
		String cafename = dao.cafeSelectOne(reserve.getCafenum()).getCafename();
		m.addAttribute("reservation", reserve);
		m.addAttribute("cafename", cafename);

		return "single/menu";
	}

	@RequestMapping("sendMSGPro")
	public String sendMSGPro(String reservenum, String guesttel,String cafeNum) {

		int reservationnum = Integer.parseInt(reservenum);
		Reservation reserve = dao.reserveSelectOne(reservationnum);

		String cafename = dao.cafeSelectOne(reserve.getCafenum()).getCafename();
		String date = reserve.getReservedate();
		String time = reserve.getReservetime();

		SendSMSTwilio sms = new SendSMSTwilio();
		String country = "82";

		sms.sendSMS(country, guesttel, cafename, date, time);
		
		String msg = "문자발송이 완료되었습니다.";
		String url = "reservation/orner?cafeNum="+cafeNum;

		m.addAttribute("msg",msg);
		m.addAttribute("url",url);
		
		return "alert";
	}

	@RequestMapping("deleteReservation")
	public String deleteReservation(String reservenum,String cafeNum) {

		dao.reserveDelete(reservenum);
		
		String msg = "삭제가 완료되었습니다.";
		String url = "reservation/orner?cafeNum="+cafeNum;

		m.addAttribute("msg",msg);
		m.addAttribute("url",url);
		
		return "alert";
	}
	@RequestMapping("deleteReservationGuest")
	public String deleteReservationGuest(String reservenum) {

		dao.reserveDelete(reservenum);

		return "reservation/main";
	}

	@RequestMapping("orner*")
	public String orner(String cafeNum) {

		m.addAttribute("cafeNum", cafeNum);
		return "orner/ornerconfirm";
	}

	
	@RequestMapping("restseat")
	public String restseat(String cafenum,String date, String time) {
		
		int seat = dao.selectSeat(cafenum);
		int reservePeople = dao.checkSeat(cafenum, date, time);
		int restseat = seat - reservePeople;
		
		m.addAttribute("restseat", restseat);
		m.addAttribute("cafenum", cafenum);
		m.addAttribute("date", date);
		m.addAttribute("time", time);
		
		return "single/ajax";
	}
	@RequestMapping("searchReserve")
	public String searchReserve() {
		
		
		return "reservation/searchReserve";
	}
	@RequestMapping("searchReservePro")
	public String searchReservePro(String cafename, String guesttel, String guestpass) {
		
		int cafenum = dao.selectCafenum(cafename);
		Cafe cafe = dao.cafeSelectOne(cafenum);
		List<Reservation> reserveList = dao.reserveList(cafenum,guesttel,guestpass);
		String msg = "";
		String url = "";
		if(reserveList.isEmpty()) {
			msg = "해당되는 예약이 없습니다. 다시 한번 확인해 주세요.";
			url = "reservation/searchReserve";
			
			m.addAttribute("url",url);
			m.addAttribute("msg",msg);
			
			return "alert";
		}
		
		
		m.addAttribute("reserveList",reserveList);
		m.addAttribute("cafe",cafe);
		return "reservation/reservationList";
	}
	@RequestMapping("alert")
	public String alert() {
		
		String url = "reservation/main";
		String msg = "예약이 진행 중입니다. 해당 가게에서 확인 후 문자 드립니다.";
		
		m.addAttribute("url", url);
		m.addAttribute("msg", msg);
		

		return "alert";
	}

}
