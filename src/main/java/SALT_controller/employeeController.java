package SALT_controller;

import java.util.ArrayList; 
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.method.annotation.SessionStatusMethodArgumentResolver;

import SALT_model.Booseo;
import SALT_model.Employee;
import SALT_model.Inseong;
import SALT_model.Mresult;
import SALT_model.Result;
import SALT_model.Silmoo;
import SALT_service.EmployeeMybatis;

@Controller
@RequestMapping("/employee/")
public class employeeController {
	HttpServletRequest request;
	Model m;
	HttpSession session;
	
	@Autowired
	EmployeeMybatis dao;

	@ModelAttribute
	void init(HttpServletRequest request, Model m) {
		this.request = request;
		this.m = m;
		this.session = request.getSession();
	}

	@RequestMapping("main")
	public String main() {
		return "login/logmain";
	}

	@RequestMapping("empcreatepro") // 사원 생성
	public String empcreatepro(Employee employee) {
		String empno = employee.getEmpno();
		String username = employee.getUsername();
		String password = employee.getPassword();
		String deptno = employee.getDeptno();
		String content = employee.getContent();

		System.out.print(empno);
		System.out.print(username);
		System.out.print(password);
		System.out.println(deptno);
		System.out.println(content);

		dao.empinput(empno, username, password, deptno, content);

		String url = "employee/employeelist";
		String msg = "사원정보등록되었습니다.";
		m.addAttribute("url", url);
		m.addAttribute("msg", msg);
		return "alert";
	}

	@RequestMapping("login")
	public String login(Employee employee) {
		String empno = employee.getEmpno();
		String password = employee.getPassword();

		// System.out.printf("11111111",empno,password);

		if (empno.equals("admin") && password.equals("admin")) {
			m.addAttribute("admin", empno);
			request.getSession().setAttribute("login", empno);
			request.getSession().setAttribute("name", "admin");
			return "login/logmain";
		}

		List<Employee> empinfo = dao.login(empno, password);

		if (!empinfo.isEmpty()) {
			String name = dao.empname(empno);
			m.addAttribute("empinfo", empinfo);
			request.getSession().setAttribute("login", empno);
			request.getSession().setAttribute("name", name);
			return "login/logmain";
		} else {
			String url = "";
			String msg = "아이디나 암호가 잘못 되었습니다.";
			m.addAttribute("url", url);
			m.addAttribute("msg", msg);
			return "alert";
		}
	}

	@RequestMapping("employeelist") // 사원 리스트 뽑기
	public String employeelist() {
		List<Employee> employeelist = dao.employeelist();
		List<Booseo> booseolist = dao.Empbooseolist();
		m.addAttribute("employeelist", employeelist);
		m.addAttribute("booseolist", booseolist);
		return "admin/employeelist";
	}

	@RequestMapping("empdeptupdate")
	public String empupdate(Booseo booseo, Employee employee) {
		String deptname1 = booseo.getDeptname();
		String empno1 = employee.getEmpno();
		System.out.println(deptname1);
		System.out.println(empno1);
		dao.empdeptupdate(deptname1, empno1);
		String url = "employee/employeelist";
		String msg = "변경되었습니다.";
		m.addAttribute("url", url);
		m.addAttribute("msg", msg);
		return "alert";
	}

	// ADMIN의 부서 만들기
	@RequestMapping("empcreate")
	public String empcreate() {
		return "admin/ADusernew";
	}

	@RequestMapping("empupdate")
	public String empupdate(Employee employee) {
		String deptno = employee.getDeptno();
		String empno = employee.getEmpno();
		System.out.println(deptno);
		System.out.println(empno);
		dao.empbooseo(deptno, empno);
		String url = "booseouser/empbooseolist";
		String msg = "변경되었습니다.";
		m.addAttribute("url", url);
		m.addAttribute("msg", msg);
		return "alert";

	}

	@RequestMapping("logout")
	public String logout() {
		request.getSession().invalidate();
		return "login/logmain";
	}

	@RequestMapping("userscore")
	public String userscore(String empno) {
		System.out.println(empno);
		String a = dao.deptname();
		System.out.println(a);
		List<Result> userscore = dao.userscore(empno, a);
		List<Employee> userscore2 = dao.userscore2(empno);

		m.addAttribute("userscore", userscore);
		m.addAttribute("userscore2", userscore2);
		return "user/userscore";
	}

	@RequestMapping("booseolistpro")
	public String booseolistpro(String login) {
		
		System.out.println(login);
		List<Booseo> blist = dao.booseolist();
		m.addAttribute("booseolist", blist);
		System.out.println(blist);
		return "admin/BooseoList";
	}

	@RequestMapping("booseouserlistpro")
	public String booseouserlistpro(String deptno) {
		List<Booseo> bulist = dao.booseouserlist(deptno);
		m.addAttribute("booseouserlist", bulist);
		System.out.println(bulist);
		return "admin/BooseoUserList";
	}

	@RequestMapping("main2")
	public String main(String empno) {
		return "login/logmain";

	}

	@RequestMapping("booseolistchoogapro")
	public String booseolistchoogapro(String deptno, String deptname) {
		dao.booseochooga(deptno, deptname);
		dao.resultbooseochooga(deptno);
		dao.mresultbooseochooga(deptno);
		String url = "employee/booseolistpro";
		String msg = "추가	되었습니다.";
		m.addAttribute("url", url);
		m.addAttribute("msg", msg);
		return "alert";
	}

	@RequestMapping("booseomunjaepro")
	public String booseomunjaelist(String deptno) {
		System.out.println(deptno);
		List<Result> munjae = dao.munjaelist(deptno);
		List<Inseong> ilist = dao.ilist();
		m.addAttribute("ilist", ilist);
		request.getSession().setAttribute("deptno1", deptno);
		m.addAttribute("munjaelist", munjae);
		return "admin/Munjae";
	}

	@RequestMapping("booseolistpro2")
	public String booseolistpro2() {
		List<Booseo> blist = dao.booseolist();
		m.addAttribute("booseolist2", blist);
		System.out.println(blist);
		return "admin/BooseoList2";
	}

	@RequestMapping("changescore")
	public String changescore(int conscore, String deptno, String content) {
		System.out.println(deptno);
		dao.changescore(conscore, deptno, content);
		request.getSession().setAttribute("deptno", deptno);
		String url = "employee/booseolistpro2";
		String msg = "점수가 변경 되었습니다.";
		m.addAttribute("url", url);
		m.addAttribute("msg", msg);
		return "alert";
	}

	@RequestMapping("munjaedelete")
	public String munjaedelete(String deptno, String content) {
		System.out.println(deptno);
		System.out.println(content);
		dao.munjaedelete(deptno, content);
		request.getSession().setAttribute("deptno", deptno);
		String url = "employee/booseolistpro2";
		String msg = "문제가 삭제 되었습니다.";
		m.addAttribute("url", url);
		m.addAttribute("msg", msg);
		return "alert";
	}

	@RequestMapping("munjaechooga")
	public String munjaechooga(String deptno, String content, int conscore, String kind) {
		if (kind.equals("실무기술")) {
			System.out.println(deptno);
			dao.munjaechooga(deptno, content, conscore, kind);
		} else {
			dao.inseongtestchooga(content, conscore, kind);
		}
		request.getSession().setAttribute("deptno", deptno);
		String url = "employee/booseolistpro2";
		String msg = "문제가 추가되었습니다.";
		m.addAttribute("url", url);
		m.addAttribute("msg", msg);
		return "alert";
	}

	@RequestMapping("userscore2")
	public String userscore2(String deptname, String empno) {
		String deptno = dao.tdept(deptname);
		String mresult = dao.mscore(deptno, empno);

		m.addAttribute("mresult", mresult);

		return "user/userresult";
	}

	@RequestMapping("userinputpro")
	public String userinputpro() {
		List<Inseong> ilist = dao.ilist();

		List<Silmoo> slist = dao.slist();

		List<String> scon = dao.scon();
		List<String> sscon = dao.scon();
		ArrayList<String> scon2 = new ArrayList<String>();
		List<String> sscore = dao.sscore();
		ArrayList<String> sscore2 = new ArrayList<String>();
		List<String> sdeptno = dao.sdeptno();
		ArrayList<String> sdeptno2 = new ArrayList<String>();

		List<String> skind = dao.skind();
		ArrayList<String> skind2 = new ArrayList<String>();

		ArrayList<Integer> jcount = new ArrayList<Integer>();

		String ss = null;
		String sss = null;

		for (int x = 0; x < scon.size(); x++) { // 중복되는값의 인덱스 값을 List jcount에 넣기
			ss = scon.get(x);
			sscon.set(x, "x");

			for (int xx = 0; xx < scon.size(); xx++) {
				sss = sscon.get(xx);
				if (ss.equals(sss)) {
					if (!jcount.contains(xx)) {
						jcount.add(xx);
					}
				}
			}
		}

		for (int y = 0; y < jcount.size(); y++) { // 중복되는 값들을 null로 바꾸기
			int c = jcount.get(y);
			slist.set(c, null);
		}
		slist.removeAll(Collections.singletonList(null)); // null 값을 제거하여 중복 content가 없는 리스트로 만들기

		for (int z = 0; z < jcount.size(); z++) { // 중복되는 값들만 모아서 부서번호, 점수, 문제내용 별로 순서대로 넣기
			int c = jcount.get(z);
			scon2.add(scon.get(c));
			sscore2.add(sscore.get(c));
			sdeptno2.add(sdeptno.get(c));

			skind2.add(skind.get(c));
		}

		m.addAttribute("scon2", scon2);
		m.addAttribute("sscore2", sscore2);
		m.addAttribute("sdeptno2", sdeptno2);

		m.addAttribute("skind2", skind2);

		m.addAttribute("ilist", ilist);
		m.addAttribute("slist", slist);

		System.out.println(slist);
		System.out.println(scon2);
		System.out.println(sscore2);
		System.out.println(sdeptno2);

		return "user/usertest1";
	}

	// 역량평가
	@RequestMapping("aaa")
	public String aaa(String empno) {
		int b = dao.booseocount(); // booseo 테이블에서 부서 개수 구하기
		List<String> boo = dao.booseodeptnolist();
		String[] cc = new String[b];
		for (int x = 0; x < b; x++) {
			cc[x] = boo.get(x);
		}

		int iresult = 0;

		String d = null;

		String x = null;

		try {

			String aaa = dao.resultlist(empno);

			if (aaa == null) {
				dao.resultinput2(empno);
			} else {
				dao.resultdelete(empno);
				dao.resultinput2(empno);
			}

			String bbb = dao.mresultlist(empno);

			if (bbb == null) {
				dao.mresultinput(empno);
			} else {
				dao.mresultdelete(empno);
				dao.mresultinput(empno);
			}

			int cnt = Integer.parseInt(request.getParameter("cnt"));
			for (int j = 1; j <= cnt - 1; j++) {
				for (int i = 0; i < request.getParameterValues("ch" + String.valueOf(j)).length; i++) {
					iresult += Integer.parseInt(request.getParameterValues("ch" + String.valueOf(j))[i]);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println("여서부터");
		for (int y = 0; y < b; y++) {
			String deptno = cc[y];
			System.out.println("부서 : " + cc[y]);
			System.out.println("인성/기본 점수 : " + iresult);
			dao.resultinput3(deptno, iresult, empno);
		}

		try {
			int cnt = Integer.parseInt(request.getParameter("cnt"));
			for (int j = 2; j <= cnt; j++) { // 어차피 한번만 실행됨 쓰잘데기 없음
				for (int t = 0; t < b; t++) {
					String deptno = cc[t];
					for (int i = 0; i < request.getParameterValues("ch" + String.valueOf(j)).length; i++) {
						d = request.getParameterValues("ch" + String.valueOf(j))[i];
						String content = d;
						String mmm = dao.mresultlist(empno);
						System.out.println("mmm : " + mmm);
						if (mmm == null) {
							dao.mcontentinput1(deptno, content, empno);
							System.out.println("비었을때");
						} else {
							dao.mcontentinput2(deptno, content, empno);
							System.out.println("있을때");

						}
					}
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		/////////////////////////////////////////////////////// 위는 인성 아래는 실무

		try {
			int cntt = Integer.parseInt(request.getParameter("cntt"));
			for (int j = 3; j <= cntt - 1; j++) {
				for (int i = 0; i < request.getParameterValues("ch" + String.valueOf(j)).length; i++) {
					String s = request.getParameterValues("ch" + String.valueOf(j))[i];

					String ss = s.replaceAll("[0-9]", "");
					int si = Integer.parseInt(s.replaceAll("[^0-9]", ""));

					dao.resultupdate2(empno, ss, si); // result 테이블에 update로 값 더해서 넣기
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			String[] z = new String[request.getParameterValues("ch" + String.valueOf(4)).length];
			for (int t = 0; t < cc.length; t++) {
				String deptno = cc[t];
				int cntt = Integer.parseInt(request.getParameter("cntt"));
				for (int j = 4; j <= cntt; j++) {
					for (int i = 0; i < request.getParameterValues("ch" + String.valueOf(j)).length; i++) {
						d = (request.getParameterValues("ch" + String.valueOf(j))[i]).replace(cc[t], "");
						String ddd = (request.getParameterValues("ch" + String.valueOf(j))[i]).replace(d, "");
						String content = d;
						if (ddd.equals(deptno)) {
							String mmm = dao.mresultlist(empno);
							if (mmm == null) {
								dao.mcontentinput1(deptno, content, empno);
							} else {
								dao.mcontentinput2(deptno, content, empno);
							}
						}

					}
				}
				x = request.getParameterValues("ch" + String.valueOf(4))[0];
				z[0] = x.substring(x.indexOf(")") + 1, x.length());
				System.out.println("z[0] : " + z[0]);
				for (int j = 4; j <= cntt; j++) {
					for (int i = 1; i < request.getParameterValues("ch" + String.valueOf(j)).length; i++) {
						x = request.getParameterValues("ch" + String.valueOf(j))[i];
						z[i] = x.substring(x.indexOf(")") + 1, x.length());
					}
				}
			}

			for (int num = 0; num < request.getParameterValues("scon").length; num++) {
				String zz = request.getParameterValues("scon")[num];
				if (!(Arrays.asList(z).contains(zz))) {
					String ss = request.getParameterValues("sdeptno")[num];
					int si = Integer.parseInt(request.getParameterValues("sscore")[num]);
					dao.resultupdate2(empno, ss, si);
				}
			}

			for (int num = 0; num < request.getParameterValues("scon").length; num++) {
				String zz = request.getParameterValues("scon")[num];
				if (Arrays.asList(z).contains(zz)) {
					String deptno = request.getParameterValues("sdeptno")[num];
					List<Mresult> a = dao.mcontentlist(deptno, empno);
					String content = "(" + (request.getParameterValues("skind")[num]) + ")"
							+ (request.getParameterValues("scon")[num]);
					if (a.isEmpty()) {
						dao.mcontentinput1(deptno, content, empno);
					} else {
						dao.mcontentinput2(deptno, content, empno);
					}
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		// scon sscore sdeptno skind

		return "login/logmain";
	}

	@RequestMapping("inseongtestlist") // 인성 문제 리스트 뽑기
	public String inseongtestlist() {
		List<Inseong> ilist = dao.ilist();
		m.addAttribute("ilist", ilist);
		System.out.println(ilist);
		return "admin/Munjae";
	}

	@RequestMapping("inseongtestdelete")
	public String inseongtestdelete(String content) {
		System.out.println(content);
		dao.inseongtestdelete(content);
		String url = "employee/booseolistpro2";
		String msg = "삭제	되었습니다.";
		m.addAttribute("url", url);
		m.addAttribute("msg", msg);
		return "alert";
	}

	@RequestMapping("inseongtestscorechange")
	public String inseongtestscorechange(int conscore, String content) {
		System.out.print(conscore);
		System.out.print(content);
		dao.inseongtestscorechange(conscore, content);

		String url = "employee/booseolistpro2";
		String msg = "변경	되었습니다.";
		m.addAttribute("url", url);
		m.addAttribute("msg", msg);
		return "alert";
	}

}