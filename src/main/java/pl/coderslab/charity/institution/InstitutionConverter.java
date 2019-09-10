package pl.coderslab.charity.institution;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

public class InstitutionConverter implements Converter<String, Institution> {

    @Autowired
    private InstitutionRepository institutionRepository;

    @Override
    public Institution convert(String s) {
        Long id = Long.parseLong(s);
        return institutionRepository.findById(id).get();
    }
}
