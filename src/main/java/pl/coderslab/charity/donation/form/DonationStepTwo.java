package pl.coderslab.charity.donation.form;

import javax.validation.constraints.NotNull;

public class DonationStepTwo {

    @NotNull
    private int quantity;

    public DonationStepTwo(int quantity) {
        this.quantity = quantity;
    }

    public DonationStepTwo() {
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
