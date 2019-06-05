package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.Domain.kategor;
import com.example.demo.controller.Demi.KategorForm;
import com.example.demo.repository.CategoryRepository;

@Controller
public class HomeController {
	@Autowired
	private CategoryRepository repo;
	@RequestMapping("/admin/category")
	public String index() {
		return "category-index";
	}
	
	@RequestMapping("/admin/category/list")
	public String list (Model model ) {
		model.addAttribute("Jagsaalt",repo.findAll());
		return "category-list";
	}
	///////sdffffffffffffffffffffffffff
	@RequestMapping("/admin/category/edit")
	public String edit(@RequestParam Integer ID,Model Modeledit) {
		kategor KATEGOR = repo.findById(ID).get();
		KategorForm form = new KategorForm();
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
