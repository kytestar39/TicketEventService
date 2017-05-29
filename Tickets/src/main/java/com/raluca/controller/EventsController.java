package com.raluca.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.raluca.requests.EventService;
import com.sun.research.ws.wadl.Response;
 
@Controller
public class EventsController {
	String message = "Welcome to Spring MVC!";
 
	@RequestMapping("/event")
	public ModelAndView showMessage(
			@RequestParam(value = "name", required = false, defaultValue = "World") String name) {
		System.out.println("in controller");
	//apply get
		String url = name;
		javax.ws.rs.core.Response rtfesponse = EventService.getMsg(url);
		ModelAndView mv = new ModelAndView("events");
		String[] values = (String[]) rtfesponse.getEntity();
		String response = "";
		for (int i=1; i<values.length; i++){
			response = response + "|" + values[i];
		}
		mv.addObject("message", response);
		
		mv.addObject("name", name);
		return mv;
	}
	@RequestMapping("/eventDetails")
	public ModelAndView showMessage2(
			@RequestParam(value = "name", required = false, defaultValue = "World") String name) {
		System.out.println("in controller");
	//apply get
		String url = name;
		javax.ws.rs.core.Response rtfesponse = EventService.getMsgEvent(url);
		ModelAndView mv = new ModelAndView("byeticket");
		String[] values = (String[]) rtfesponse.getEntity();
		String response = "";
		for (int i=1; i<values.length; i++){
			response = response + "|" + values[i];
		}
		mv.addObject("message", response);
		
		mv.addObject("name", name);
		return mv;
	}
	
	@RequestMapping("/buyTicket")
	public ModelAndView showMessage3(
			@RequestParam(value = "name", required = false, defaultValue = "World") String name) {
		System.out.println("in controller");
	//apply get
		String url = name;
		javax.ws.rs.core.Response rtfesponse = EventService.sendpostBuyTicket(url);
		ModelAndView mv = new ModelAndView("cancelticket");
		String response = (String) rtfesponse.getEntity();
		
		mv.addObject("message", response);
		
		mv.addObject("name", name);
		return mv;
	}
	@RequestMapping("/cancelTicket")
	public ModelAndView showMessage4(
			@RequestParam(value = "name", required = false, defaultValue = "World") String name) {
		System.out.println("in controller");
	//apply get
		String url = name;
		javax.ws.rs.core.Response rtfesponse = EventService.sendpostCancelTicket(url);
		ModelAndView mv = new ModelAndView("index");
		String response = (String) rtfesponse.getEntity();
		
		mv.addObject("message", response);
		
		mv.addObject("name", name);
		return mv;
	}
}