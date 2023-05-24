package KIC1_model;

public class Menu {
	private int menunum;
	private int cafenum;
	private String menuname;
	private int menuprice;
	
	public Menu() {}
	public int getMenunum() {
		return menunum;
	}
	public void setMenunum(int menunum) {
		this.menunum = menunum;
	}
	public int getCafenum() {
		return cafenum;
	}
	public void setCafenum(int cafenum) {
		this.cafenum = cafenum;
	}
	public String getMenuname() {
		return menuname;
	}
	public void setMenuname(String menuname) {
		this.menuname = menuname;
	}
	public int getMenuprice() {
		return menuprice;
	}
	public void setMenuprice(int menuprice) {
		this.menuprice = menuprice;
	}
	@Override
	public String toString() {
		return "메뉴 =[메뉴고유번호=" + menunum + ", 식당고유번호=" + cafenum + ", 메뉴이름=" + menuname + ", 메뉴가격="
				+ menuprice +"]";
	}
	
	
}
