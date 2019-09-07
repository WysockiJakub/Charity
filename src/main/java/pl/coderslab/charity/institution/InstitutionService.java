package pl.coderslab.charity.institution;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InstitutionService {

    private InstitutionRepository institutionRepository;

    @Autowired
    public InstitutionService(InstitutionRepository institutionRepository) {
        this.institutionRepository = institutionRepository;
    }

    public List<Institution> getAllInstitution() {
        return institutionRepository.findAll();
    }
}
