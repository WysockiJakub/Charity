package pl.coderslab.charity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.donation.DonationService;
import pl.coderslab.charity.institution.Institution;
import pl.coderslab.charity.institution.InstitutionService;

import java.util.List;


@Controller
public class HomeController {

    private InstitutionService institutionService;
    private DonationService donationService;

    @Autowired
    public HomeController(InstitutionService institutionService, DonationService donationService) {
        this.institutionService = institutionService;
        this.donationService = donationService;
    }

    @RequestMapping("/")
    public String homeAction(Model model){

        List<Institution> allInstitutions = institutionService.getAllInstitution();
        model.addAttribute("allInstitutions", allInstitutions);
        int allDonationsQuantity = donationService.countOfAllDonationsQuantity();
        model.addAttribute("allDonationsQuantity", allDonationsQuantity);
        int numberOfDonatedInstitutions = institutionService.countDonatedInstitutions();
        model.addAttribute("allDonatedInstitutions", numberOfDonatedInstitutions);
        return "index";
    }
}
