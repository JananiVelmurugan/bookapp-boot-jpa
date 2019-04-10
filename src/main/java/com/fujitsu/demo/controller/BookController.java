package com.fujitsu.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.fujitsu.demo.dao.BookDao;
import com.fujitsu.demo.model.Book;

@RestController
@RequestMapping("/books")
public class BookController {
	@Autowired
	private BookDao bookDao;

	@GetMapping("/")
	public ModelAndView findAll() {
		List<Book> booksList = bookDao.findAll();
		ModelAndView modelAndView = new ModelAndView("listbooks");
		modelAndView.addObject("BOOKSLIST", booksList);
		return modelAndView;

	}

	@PostMapping("/save")
	public ModelAndView save(@RequestParam Integer id, @RequestParam String name) {
		Book book = new Book();
		book.setId(id);
		book.setName(name);
		bookDao.save(book);
		List<Book> booksList = bookDao.findAll();
		ModelAndView modelAndView = new ModelAndView("listbooks");
		modelAndView.addObject("BOOKSLIST", booksList);
		return modelAndView;
	}

}
