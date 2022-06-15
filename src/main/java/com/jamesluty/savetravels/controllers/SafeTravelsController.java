package com.jamesluty.savetravels.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.jamesluty.savetravels.models.Expense;
import com.jamesluty.savetravels.services.ExpenseService;

@Controller
public class SafeTravelsController {
	private final ExpenseService expenseService;
	
	public SafeTravelsController(ExpenseService expenseService) {
		this.expenseService = expenseService;
	}
	
//	@AutoWired
//	private ExpenseService expenseService;

//	Display Routes
	@GetMapping("/")
	public String home(@ModelAttribute("expense") Expense expense, Model model) {
		model.addAttribute("expenses", expenseService.getAll());
		return "index.jsp";
	}
	
//	POST Routes
	@PostMapping("/create")
	public String create(@Valid @ModelAttribute("expense") Expense expense, BindingResult result) {
		if(result.hasErrors()) {
			System.out.println("testinh");
			return "index.jsp";
		} else {
			expenseService.createExpense(expense);
			return "redirect:/";
		}
	}
}
