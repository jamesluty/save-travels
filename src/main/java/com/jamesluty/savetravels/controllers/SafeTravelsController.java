package com.jamesluty.savetravels.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.jamesluty.savetravels.models.Expense;
import com.jamesluty.savetravels.services.ExpenseService;

@Controller
public class SafeTravelsController {
//	private final ExpenseService expenseService;
//	
//	public SafeTravelsController(ExpenseService expenseService) {
//		this.expenseService = expenseService;
//	}
	
	@Autowired
	private ExpenseService expenseService;

//	Display Routes
	@GetMapping("/")
	public String home(@ModelAttribute("expense") Expense expense, Model model) {
		model.addAttribute("expenses", expenseService.getAll());
		return "index.jsp";
	}
	
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Long id, Model model) {
		Expense expense = expenseService.getOne(id);
		model.addAttribute("expense", expense);
		return "edit.jsp";
	}
	
//	POST Routes
	@PostMapping("/create")
	public String create(@Valid @ModelAttribute("expense") Expense expense, BindingResult result) {
		if(result.hasErrors()) {
			return "index.jsp";
		} else {
			expenseService.save(expense);
			return "redirect:/";
		}
	}
	
	@PutMapping("/edit")
	public String edit(@Valid @ModelAttribute("expense") Expense expense, BindingResult result) {
		if(result.hasErrors()) {
			return "index.jsp";
		} else {
			expenseService.save(expense);
			return "redirect:/";
		}
	}
}
