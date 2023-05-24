package KIC1_model;

public class Cafe {
	private int cafenum;
	private String cafename;
	private String cafelocation;
	private String cafetel;
	private int cafetotalseat;
	private String cafekind;
	private String cafepicture;

	public Cafe() {}
	
	public int getCafenum() {
		return cafenum;
	}

	public void setCafenum(int cafenum) {
		this.cafenum = cafenum;
	}

	public String getCafename() {
		return cafename;
	}

	public void setCafename(String cafename) {
		this.cafename = cafename;
	}

	public String getCafelocation() {
		return cafelocation;
	}

	public void setCafelocation(String cafelocation) {
		this.cafelocation = cafelocation;
	}

	public String getCafetel() {
		return cafetel;
	}

	public void setCafetel(String cafetel) {
		this.cafetel = cafetel;
	}

	public int getCafetotalseat() {
		return cafetotalseat;
	}

	public void setCafetotalseat(int cafetotalseat) {
		this.cafetotalseat = cafetotalseat;
	}

	public String getCafekind() {
		return cafekind;
	}

	public void setCafekind(String cafekind) {
		this.cafekind = cafekind;
	}

	public String getCafepicture() {
		return cafepicture;
	}

	public void setCafepicture(String cafepicture) {
		this.cafepicture = cafepicture;
	}

	@Override
	public String toString() {
		return "식당 =[식당고유번호=" + cafenum + ", 식당이름=" + cafename + ", 식당위치=" + cafelocation + ", 식당전화번호="
				+ cafetel + ", 식당총좌석=" + cafetotalseat + ", 식당분류=" + cafekind + ", 식당사진="
				+ cafepicture + "]";
	}
	
}
