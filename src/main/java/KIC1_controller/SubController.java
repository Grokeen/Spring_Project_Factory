package KIC1_controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/subpage/")
public class SubController {
	HttpServletRequest request;    
	Model m;
	HttpSession session;
 
	
	@ModelAttribute
	void init(HttpServletRequest request, Model m) {
		this.request = request;
		this.m = m;
		this.session = request.getSession();
	}
	
	
	
	@RequestMapping("company")
	public String goenterprise() {
		return "addpage/gocompany";
	}
	
	@RequestMapping("maininfo")
	public String maininfo() {
		return "addpage/pageinfor";
	}
	
	@RequestMapping("mainoper")
	public String mainoper() {
		return "addpage/pageoperation";
	}
	
	@RequestMapping("getting")
	public String gettionpage() {
		return "addpage/gettingjob";
	}
	
	
}
