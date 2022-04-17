package com.dannielcervantes.savetravels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;


import com.dannielcervantes.savetravels.models.Expense;
import com.dannielcervantes.savetravels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	// Import repository
	private final ExpenseRepository expenseRepo;
	public ExpenseService(ExpenseRepository expenseRepo) {
		this.expenseRepo = expenseRepo;
	}
	
	// Find all expenses
	public List<Expense> allExpenses() {
		return expenseRepo.findAll();
	}
	// Find one expense
	public Expense findExpense(Long id) {
		Optional<Expense> optionalExpense = expenseRepo.findById(id);
		if(optionalExpense.isPresent()) {
			return optionalExpense.get();
		} else {
			return null;
		}
	}
	// Create an expense
	public Expense createExpense(Expense expense) {
		return expenseRepo.save(expense);
	}
	// Update an expense
	public Expense updateExpense(Expense expense) {
		return expenseRepo.save(expense);
	}
	// Delete an expense
	public void deleteExpense(Long id) {
		expenseRepo.deleteById(id);
	}
		
}
