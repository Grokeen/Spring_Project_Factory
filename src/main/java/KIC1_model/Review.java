package KIC1_model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Review {
	private int reviewnum; 
	private int cafenum; 
	private String name; 
	private String guesttel; 
	private String reviewtitle; 
	private String reviewcontent; 
	private String file1; 
	private double score;
	private Date regdate; 
	private int readcnt;  
	private int ref; 
	private int reflevel; 
	private int refstep; 
	
	private MultipartFile f;
	
	public Review() {}
	
	
	
	public int getReviewnum() {
		return reviewnum;
	}


	public void setReviewnum(int reviewnum) {
		this.reviewnum = reviewnum;
	}



	public int getCafenum() {
		return cafenum;
	}



	public void setCafenum(int cafenum) {
		this.cafenum = cafenum;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getGuesttel() {
		return guesttel;
	}



	public void setGuesttel(String guesttel) {
		this.guesttel = guesttel;
	}



	public String getReviewtitle() {
		return reviewtitle;
	}



	public void setReviewtitle(String reviewtitle) {
		this.reviewtitle = reviewtitle;
	}



	public String getReviewcontent() {
		return reviewcontent;
	}



	public void setReviewcontent(String reviewcontent) {
		this.reviewcontent = reviewcontent;
	}



	public String getFile1() {
		return file1;
	}



	public void setFile1(String file1) {
		this.file1 = file1;
	}



	public double getScore() {
		return score;
	}



	public void setScore(double score) {
		this.score = score;
	}



	public Date getRegdate() {
		return regdate;
	}



	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}



	public int getReadcnt() {
		return readcnt;
	}



	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}



	public int getRef() {
		return ref;
	}



	public void setRef(int ref) {
		this.ref = ref;
	}



	public int getReflevel() {
		return reflevel;
	}



	public void setReflevel(int reflevel) {
		this.reflevel = reflevel;
	}



	public int getRefstep() {
		return refstep;
	}



	public void setRefstep(int refstep) {
		this.refstep = refstep;
	}



	public MultipartFile getF() {
		return f;
	}



	public void setF(MultipartFile f) {
		this.f = f;
	}



	@Override
	public String toString() {
		return "Review [reviewnum=" + reviewnum + ", cafenum=" + cafenum + ", name=" + name + ", guesttel=" + guesttel
				+ ", reviewsubject=" + reviewtitle + ", reviewcontent=" + reviewcontent + ", file1=" + file1
				+ ", score=" + score + ", regdate=" + regdate + ", readcnt=" + readcnt + ", ref=" + ref + ", reflevel="
				+ reflevel + ", refstep=" + refstep + ", f=" + f + "]";
	}



	
	
}