package KIC1_model;

import java.util.Date;

public class Reservation {
	private int reservenum;
	private int cafenum;
	private String guesttel;
	private String guestpass;
	private String reservetime;
	private String reservedate; 
	private int reservepeople;
	
	public Reservation() {}
	public int getReservenum() {
		return reservenum;
	}
	public String getReservetime() {
		return reservetime;
	}
	public void setReservetime(String reservetime) {
		this.reservetime = reservetime;
	}
	public void setReservenum(int reservenum) {
		this.reservenum = reservenum;
	}
	public int getCafenum() {
		return cafenum;
	}
	public void setCafenum(int cafenum) {
		this.cafenum = cafenum;
	}
	public String getGuesttel() {
		return guesttel;
	}
	public void setGuesttel(String guesttel) {
		this.guesttel = guesttel;
	}
	public String getGuestpass() {
		return guestpass;
	}
	public void setGuestpass(String guestpass) {
		this.guestpass = guestpass;
	}
	public String getReservedate() {
		return reservedate;
	}
	public void setReservedate(String reservedate) {
		this.reservedate = reservedate;
	}
	public int getReservepeople() {
		return reservepeople;
	}
	public void setReservepeople(int reservepeople) {
		this.reservepeople = reservepeople;
	}
	@Override
	public String toString() {
		return "예약 =[예약고유번호=" + reservenum + ", 카페고유번호=" + cafenum + ", 전화번호=" + guesttel
				+ ", 비밀번호=" + guestpass + ",예약시간=" + reservetime + ", 예약날짜=" + reservedate + ", 예약인원=" + reservepeople
				+ "]";
	}
	
}
