package ie.pt.DevopsSpring;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @Value("${title}")
    String title;

    @Value("${message}")
    String message;

    @Value("${secret}")
    String secret;

    @GetMapping("/")
    public String index(Model model) {

        model.addAttribute("title", title);
        model.addAttribute("message", message);
        model.addAttribute("secret", secret);

        
        return "index";
    }
}
