package com.fujitsu.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fujitsu.demo.model.Book;

public interface BookDao extends JpaRepository<Book, Integer> {

}
