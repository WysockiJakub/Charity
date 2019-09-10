package pl.coderslab.charity.donation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.institution.Institution;
import pl.coderslab.charity.institution.InstitutionService;

import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/donation")
public class DonationController {

    private InstitutionService institutionService;
    private DonationService donationService;

    @Autowired
    public DonationController(InstitutionService institutionService, DonationService donationService) {
        this.institutionService = institutionService;
        this.donationService = donationService;
    }

    @ModelAttribute(name = "categories")
    List<String> categories() { return Arrays.asList("ubrania, które nadają się do ponownego użycia", "ubrania, do wyrzucenia", "zabawki", "książki", "inne");}

    @ModelAttribute(name = "institutions")
    List<Institution> institutions() { return institutionService.getAllInstitution();}

    @GetMapping("/1")
    public String firstStepDonationForm(Model model) {
        model.addAttribute("donation", new Donation());
        return "addDonationForm/form1";
    }

    @PostMapping("/1")
    public String firstStepDonationFormPost(@ModelAttribute Donation donation, HttpSession session) {
        Donation tempDonation = new Donation();
        tempDonation.setCategories(donation.getCategories());
        session.setAttribute("donation", tempDonation);
        return "redirect:/donation/2";
    }

    @GetMapping("/2")
    public String secondStepDonationForm(Model model) {
        model.addAttribute("donation", new Donation());
        return "addDonationForm/form2";
    }

    @PostMapping("/2")
    public String secondStepDonationFormPost(@ModelAttribute Donation donation, HttpSession session) {
        Donation tempDonation = (Donation) session.getAttribute("donation");
        tempDonation.setQuantity(donation.getQuantity());
        session.setAttribute("donation", tempDonation);
        return "redirect:/donation/3";
    }

    @GetMapping("/3")
    public String thirdStepDonationForm(Model model) {
        model.addAttribute("donation", new Donation());
        return "addDonationForm/form3";
    }

    @PostMapping("/3")
    public String thirdStepDonationFormPost(@ModelAttribute Donation donation, HttpSession session) {
        Donation tempDonation = (Donation) session.getAttribute("donation");
        tempDonation.setInstitution(donation.getInstitution());
        session.setAttribute("donation", tempDonation);
        return "redirect:/donation/4";
    }

    @GetMapping("/4")
    public String forthStepDonationForm(Model model) {
        model.addAttribute("donation", new Donation());
        return "addDonationForm/form4";
    }

    @PostMapping("/4")
    public String forthStepDonationFormPost(@ModelAttribute Donation donation, HttpSession session) {
        Donation tempDonation = (Donation) session.getAttribute("donation");
        tempDonation.setStreet(donation.getStreet());
        tempDonation.setCity(donation.getCity());
        tempDonation.setZipCode(donation.getZipCode());
        tempDonation.setPickUpDate(donation.getPickUpDate());
        tempDonation.setPickUpTime(donation.getPickUpTime());
        tempDonation.setPickUpComment(donation.getPickUpComment());
        session.setAttribute("donation", tempDonation);
        return "redirect:/donation/summary";
    }

    @GetMapping("/summary")
    public String summaryDonationForm(HttpSession session, Model model) {
        Donation donation = (Donation) session.getAttribute("donation");
        model.addAttribute("donation", donation);
        return "addDonationForm/summary";
    }

    @PostMapping("/summary")
    public String summaryDonationFormSave(HttpSession session) {
        Donation donation = (Donation) session.getAttribute("donation");
        donationService.addDonation(donation);
        return "redirect:/donation/thanks";
    }

    @GetMapping("/thanks")
    public String thanksMessage() {
        return "addDonationForm/summary";
    }


}
