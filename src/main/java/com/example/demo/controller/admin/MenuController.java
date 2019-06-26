package com.example.demo.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.domain.menu;
import com.example.demo.repository.menuReposit;

@RestController
@RequestMapping("/menu")
public class MenuController {
	@Autowired
	private menuReposit repot;
	
	@RequestMapping
	public Iterable menuItem()
	{
		return repot.findAll();
	}
	@RequestMapping("/delete/{id}")
	@ResponseStatus(code = HttpStatus.NO_CONTENT)
	public void deleteMenu(@PathVariable Integer id)
	{
		menu MENU = repot.findById(id).get();
		repot.delete(MENU);
	}
	

}
