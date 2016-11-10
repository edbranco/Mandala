/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.sp.mandala.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author ebranco
 */
@Controller
public class IndexController {
    
    @RequestMapping(value ="/")
    public ModelAndView HomePage(){
        return new ModelAndView("index");
    }
    @RequestMapping(value ="/index")
    public ModelAndView index(){
        return new ModelAndView("index");
    }
    @RequestMapping(value ="/trainersModal")
    public ModelAndView trainersModal(){
        return new ModelAndView("trainersModal");
    }
}
