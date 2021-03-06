package aspera.registration.web;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import aspera.registration.service.UserService;



@Controller
public class MainController {
	@Autowired
	private UserService userService;

	/*
	 * @GetMapping("/") public String root(){ return "index"; }
	 */
    
    @GetMapping("/" )
    public String viewuser(Model model) {
        model.addAttribute("user", userService.getAllUserList());
        
		return "index";
		
	}

    @GetMapping("/login")
    public String login(Model model){
        return "login";
    }

    @GetMapping("/user")
    public String userIndex(){
        return "user/index";
    }
}
