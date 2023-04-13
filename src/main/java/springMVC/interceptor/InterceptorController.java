package springMVC.interceptor;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class InterceptorController {
	
	@RequestMapping("/inter")
	public String map() {
		return "interceptor";
	}
	
	@RequestMapping("/golang")
	public String golang(@RequestParam("userName")String name,Model m) {
		m.addAttribute("name",name);
		return "interceptor2";
	}
}
