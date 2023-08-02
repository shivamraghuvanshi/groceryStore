package com.example.java.jpaconn;

import org.springframework.data.jpa.repository.JpaRepository;

public interface prodRepo  extends JpaRepository<Grocery, Long>{
	Grocery findByprodname(String prod_name);
}
