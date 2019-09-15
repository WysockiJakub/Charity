package pl.coderslab.charity.donation.form;

import pl.coderslab.charity.institution.Institution;

public class DonationStepThree {

    private Institution institution;

    public DonationStepThree(Institution institution) {
        this.institution = institution;
    }

    public DonationStepThree() {
    }

    public Institution getInstitution() {
        return institution;
    }

    public void setInstitution(Institution institution) {
        this.institution = institution;
    }
}
