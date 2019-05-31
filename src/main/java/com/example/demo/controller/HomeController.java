package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	
	@RequestMapping("/admin/category")
	public String index() {
		return "category-index";
	}
	
	@RequestMapping("/admin/category/list")
	public String list () {
		return "category-list";
	}
	@RequestMapping("/admin/category/edit")
	public String edit(@RequestParam Integer id) {		
		System.out.println(id);
		return "category-edit";
	}
	
	@RequestMapping("/admin/category/new")
	public String newForm () {
		return "category-new";
	}
	@PostMapping("admin/category/save")
	@ResponseBody
	public String saveForm() {
		return "categoryNEW";
		
	}

}
