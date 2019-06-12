package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.domain.kategor;
import com.example.demo.Demi.KategorForm;

import com.example.demo.repository.KategoryRepository;

@Controller
public class HomeController {
	@Autowired
	private KategoryRepository repo;
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
		form.setId(KATEGOR.getId());
		form.setNer(KATEGOR.getName());
		form.setTailbar(KATEGOR.getDescription());
		Modeledit.addAttribute("toJSP", form);
		return "category-edit";
		
	}
	
	@RequestMapping("/admin/category/new")
	public String newForm (KategorForm form) {
		
		return "category-new";
	}
	@PostMapping("admin/category/save")
	@ResponseBody
	public void saveForm(KategorForm form) {
		kategor KATEGOR = new kategor();
		KATEGOR.setName(form.getNer());
		KATEGOR.setDescription(form.getTailbar());
		
		
	}

}
