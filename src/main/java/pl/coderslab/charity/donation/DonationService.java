package pl.coderslab.charity.donation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DonationService {

    private DonationRepository donationRepository;

    @Autowired
    public DonationService(DonationRepository donationRepository) {
        this.donationRepository = donationRepository;
    }

    public DonationService() {
    }

    public int countOfAllDonationsQuantity() {
        return donationRepository.countAllDonationsQuantity();
    }

    public void addDonation(Donation donation) {
        donationRepository.save(donation);
    }
}
