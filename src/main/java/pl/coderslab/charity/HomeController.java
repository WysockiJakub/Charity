package pl.coderslab.charity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.institution.Institution;
import pl.coderslab.charity.institution.InstitutionService;

import java.util.List;


@Controller
public class HomeController {

    private InstitutionService institutionService;

    @Autowired
    public HomeController(InstitutionService institutionService) {
        this.institutionService = institutionService;
    }

    @RequestMapping("/")
    public String homeAction(Model model){

        List<Institution> allInstitutions = institutionService.getAllInstitution();
        model.addAttribute("allInstitutions", allInstitutions);
        return "index";
    }
}
