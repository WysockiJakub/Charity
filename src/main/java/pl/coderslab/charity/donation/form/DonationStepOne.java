package pl.coderslab.charity.donation.form;

import pl.coderslab.charity.category.Category;

import java.util.List;

public class DonationStepOne {

    private List<Category> categories;

    public DonationStepOne(List<Category> categories) {
        this.categories = categories;
    }

    public DonationStepOne() {
    }

    public List<Category> getCategories() {
        return categories;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }
}
