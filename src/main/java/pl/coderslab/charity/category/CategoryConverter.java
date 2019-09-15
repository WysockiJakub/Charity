package pl.coderslab.charity.category;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

public class CategoryConverter implements Converter<String, Category> {

    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public Category convert(String s) {
        Long id = Long.parseLong(s);
        return categoryRepository.findById(id).get();
    }
}
