package springMVC.search;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class SearchController {
 
	@RequestMapping("/search")
	public String search() {
		
		return "searchengine";
	}
	
	@RequestMapping("/google")
	public RedirectView google(@RequestParam("query")String query ) {
		RedirectView rv=new RedirectView();
		if (query.isEmpty()) {
			rv.setUrl("search");
		}else {
		String q= "https://www.google.com/search?q="+query;
		rv.setUrl(q);
		}
		return rv;
	}
}
