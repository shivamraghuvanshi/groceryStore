package com.example.java.jpaconn;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.java.jpaconn.*;


public interface signup extends JpaRepository<AccountDetail, Long> {
	AccountDetail findByName(String name);
	AccountDetail findByEmail(String email);
}