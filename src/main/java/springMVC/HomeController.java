package springMVC;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Required;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import springMVC.model.User;

@Controller
//@RequestMapping("/first") if you use this then to go homepage you have to write /first/home in url
public class HomeController {
//		@RequestMapping("/home")
//		public String home() {
//			return "index1";
//		}

	// Sending data from controller to view using model
	@RequestMapping("/home")
	public String home(Model model) {
		model.addAttribute("name", "suvojit");
		List<String> friends = new ArrayList<String>();
		friends.add("suvojit");
		friends.add("argha");
		friends.add("souvik");
		friends.add("debu");
		model.addAttribute("f", friends);
		return "index1";
	}

//	Sending data from controller to view using modelAndView
	@RequestMapping(path = "/help", method = RequestMethod.GET)
	public ModelAndView help() {
		// creating model and view object
		ModelAndView model = new ModelAndView();
		// setting the data
		model.addObject("name", "pritam");
		model.addObject("time", new Date());

		List<String> friends = new ArrayList<String>();
		friends.add("suvojit");
		friends.add("argha");
		friends.add("souvik");
		friends.add("debu");
		model.addObject("f", friends);
		// setting view page
		model.setViewName("help");
		return model;
	}

	@RequestMapping("/form")
	public String form() {

		return "form";
	}

	/*
	 * @RequestMapping(path="/processform" ,method = RequestMethod.POST)
	 *  public String processform(@RequestParam("name") String name ,@RequestParam("email") String email,
 @RequestParam("phone") String phone ,@RequestParam("password") String pass,
 @RequestParam("address") String address ,Model model) {
	 * 
	 * model.addAttribute("name",name); model.addAttribute("email",email);
	 * model.addAttribute("phone",phone); model.addAttribute("address",address);
	 * return "success"; }
	 */

	@RequestMapping(path = "/processform", method = RequestMethod.POST)
	public String processform(@ModelAttribute User user, Model model) {

//	    	model.addAttribute("user",user); in fact you can ignore this line , That means 
		// only two line of code , its amazing!!
		return "success";
	}

	// Now think a situation ,you need some attribute in every page , then will you
	// add
	// them in model in each controller? Line of code will increase
	// so we use @ModelAttribute

	@ModelAttribute
	public void commonDataForAll(Model m) {
		System.out.println("adding all attribute");
		m.addAttribute("Header", "This is Header");
		m.addAttribute("footer", new Date());
	}

	@RequestMapping("search/{userId}/{name}")
	public String pathvariable(@PathVariable("userId") int userId, @PathVariable("name") String name) {
		System.out.println("this variable's value is comming from url and value is :" + userId);
		System.out.println(name);
		return "searchengine";
	}

// handling exception (this will handle any exception and redirect you to error page)
	@ExceptionHandler({ NullPointerException.class, ArrayIndexOutOfBoundsException.class, NumberFormatException.class })
	public String exceptionHandler() {
		return "success";
	}

// Can we handle parent class of Exception ? yes , if we handle it then its child class will
// automatically handle
	
	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)//this helps when error come like 404 etc,
	//not only Internal_server_error there are many method
	@ExceptionHandler(value = Exception.class)
	public String genericExceptionHandler() {
		return "success";
	}

}
