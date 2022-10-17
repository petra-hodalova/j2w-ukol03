package cz.czechitas.java2webapps.ukol3.controller;

import cz.czechitas.java2webapps.ukol3.entity.Vizitka;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Kontroler obsluhující zobrazování vizitek.
 */
@Controller
public class VizitkaController {

    private final List<Vizitka> seznam = List.of(
            new Vizitka("Petra Hodálová", "Mercedes", "Daimlerova 2296/2", "149 00 Praha 4", "petra.hodalova@daimler.com", "+420 321 654 987", "www.mercedes-benz.cz"),
            new Vizitka("Jiří Novák", "PRE", "Jeseniova 67", "130 00 Praha 3", "jiri.novak@pre.cz", "+420 123 456 789", null),
            new Vizitka("Adéla Perníková", "LEGO", "Jutská 2779", "272 01 Kladno", "adela.pernikova@lego.cz", null, "www.lego.cz")
    );

    @GetMapping("/")
    public ModelAndView seznam() {
        ModelAndView modelAndView = new ModelAndView("seznam");
        modelAndView.addObject("seznam", seznam);
        return modelAndView;
    }

    @GetMapping("/detail/{id}")
    public ModelAndView detail(@PathVariable int id) {
        ModelAndView modelAndView=new ModelAndView("detail");
        modelAndView.addObject("vizitkaDetail", seznam.get(id));
        return modelAndView;
    }
}
