package com.dannielcervantes.savetravels.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dannielcervantes.savetravels.models.Expense;

@Repository
public interface ExpenseRepository extends CrudRepository<Expense, Long> {
	// This finds all expenses and returns a list of expenses
	List<Expense> findAll();

}
