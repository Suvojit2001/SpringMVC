package springMVC;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class RedirectController {
    
	@RequestMapping("/one")
	public String form() {
		 return "redirect:/form";
	}
	
	@RequestMapping("/two")
	public RedirectView jodd() {
		RedirectView rView=new RedirectView();
		rView.setUrl("https://www.google.com");
		return rView;
	}
	
	@RequestMapping("/three")
	public void map(HttpServletResponse response) {
		try {
			response.sendRedirect("https://www.google.com");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
