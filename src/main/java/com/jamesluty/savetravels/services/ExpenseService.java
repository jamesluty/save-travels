package com.jamesluty.savetravels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jamesluty.savetravels.models.Expense;
import com.jamesluty.savetravels.repos.ExpenseRepo;

@Service
public class ExpenseService {
//	private final ExpenseRepo expenseRepo;
//	
//	public ExpenseService(ExpenseRepo expenseRepo) {
//		this.expenseRepo = expenseRepo;
//	}
	
	@Autowired
	private ExpenseRepo expenseRepo;
	
	public Expense save(Expense expense) {
		return expenseRepo.save(expense);
	}
	
	public List<Expense> getAll(){
		return expenseRepo.findAll();
	}
	
	public Expense getOne(Long id) {
		Optional<Expense> optExpense = expenseRepo.findById(id);
		if (optExpense.isPresent()) {
			return optExpense.get();
		} else {
			return null;
		}
	}
	
	public void delete(Long id) {
		expenseRepo.deleteById(id);
	}
}
