package springMVC.search;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springMVC.model.Student;

@Controller
public class ComplexFormController {

	@RequestMapping("/complex")
	public String showpage() {
		return "complexform";
	}
	
	@RequestMapping(path="/formhandle",method = RequestMethod.POST)
	public String formhandler(@ModelAttribute("student") Student student,BindingResult result) {
		if (result.hasErrors()) {
			return "success";
		}
		return "success";
	}
// BindingResult help us to deal with errors, like if someone gives wrong input in form then
// our page will give error so we use this and if error found then we redirect it	
	
}
