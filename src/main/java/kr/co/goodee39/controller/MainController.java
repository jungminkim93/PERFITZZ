package kr.co.goodee39.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@GetMapping("/index")
	public String index( ) {

		return "home";
	}

	/*
	 * @GetMapping("/tologin") public String tologin( ) {
	 * 
	 * return "tologin"; }
	 */
	@GetMapping("/bbs")
	public String bbs( ) {

		return "bbs";
	}
	@GetMapping("/about")
	public String about( ) {

		return "about";
	}
	
	@GetMapping("/product")
	public String product( ) {

		return "product";
	}
	
	@GetMapping("/codination")
	public String codination( ) {

		return "codination";
	}
	
	@GetMapping("/gallery")
	public String gallery( ) {

		return "gallery";
	}
	
	@GetMapping("/reservation")
	public String reservation( ) {

		return "reservation";
	}
	@GetMapping("/board")
	public String board( ) {

		return "board";
	}
	/*
	 * @GetMapping("/login") public String login( ) {
	 * 
	 * return "login"; }
	 */
	
}
