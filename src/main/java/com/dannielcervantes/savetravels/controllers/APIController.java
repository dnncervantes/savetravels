package com.dannielcervantes.savetravels.controllers;

import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.dannielcervantes.savetravels.models.Expense;
import com.dannielcervantes.savetravels.services.ExpenseService;

@RestController
public class APIController {
	private final ExpenseService expenseService;
	public APIController(ExpenseService expenseService) {
		this.expenseService = expenseService;
	}
	
	// Create new Expense
	@PostMapping(value="/api/expenses")
	public Expense create(
			@RequestParam("expenseName") String expenseName,
			@RequestParam("vendor") String vendor,
			@RequestParam("amount") Double amount,
			@RequestParam("description") String description
			) {
		Expense newExpense = new Expense(expenseName, vendor, amount, description);
		return expenseService.createExpense(newExpense);
	}
	
	// Find all Expenses
	@GetMapping("/api/expenses")
	public List<Expense> findAllExpenses() {
		return expenseService.allExpenses();
	}
	
	// Find 1 Expense
	@GetMapping("/api/expenses/{id}")
	public Expense oneExpense(@PathVariable("id") Long id) {
		return expenseService.findExpense(id);
		}
	
	// Update Expense
	@PutMapping("/api/expenses/{id}")
	public Expense updateExpense(
			@PathVariable("id") Long id,
			@RequestParam("expenseName") String expenseName,
			@RequestParam("vendor") String vendor,
			@RequestParam("amount") Double amount,
			@RequestParam("description") String description
			) {
		Expense updateExpense = expenseService.findExpense(id);
		updateExpense.setExpenseName(expenseName);
		updateExpense.setVendor(vendor);
		updateExpense.setAmount(amount);
		updateExpense.setDescription(description);
		return expenseService.updateExpense(updateExpense);
	}
	
	// Delete an expense
	@DeleteMapping("/api/expenses/{id}")
	public void deleteExpense(@PathVariable("id") Long id) {
		expenseService.deleteExpense(id);
	}
}
