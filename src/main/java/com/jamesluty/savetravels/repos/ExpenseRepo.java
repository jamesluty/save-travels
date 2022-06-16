package com.jamesluty.savetravels.repos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.jamesluty.savetravels.models.Expense;

public interface ExpenseRepo extends CrudRepository<Expense, Long> {

	// this method retrieves all the books from the database
	List<Expense> findAll();
}
