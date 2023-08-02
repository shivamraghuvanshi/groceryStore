package com.example.java.jpaconn;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;
@Entity
@Table(name = "Grocery")
public class Grocery {
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private Long id;
	 
	 @Column(name="Product_Name")
	 private String prodname;
	 
	 @Column(name="Product_Price")
	 private String prod_price;
	 
	 @Column(name="Product_Quantity")
	 private String prod_quant;
	 
	 @Column(name="Product_Image")
	 private String prod_img;
	 
	public Long getId() {
		return id;
	}
	 
	 public Grocery() {
		 
	 }
	public Grocery(String prodname, String prod_price, String prod_quant,String prod_img) {
		super();
		this.prodname = prodname;
		this.prod_price = prod_price;
		this.prod_quant = prod_quant;
		this.prod_img = prod_img;
	}

	public String getProdname() {
		return prodname;
	}

	public void setProdname(String prodname) {
		this.prodname = prodname;
	}

	public String getProd_price() {
		return prod_price;
	}

	public void setProd_price(String prod_price) {
		this.prod_price = prod_price;
	}

	public String getProd_quant() {
		return prod_quant;
	}

	public void setProd_quant(String prod_quant) {
		this.prod_quant = prod_quant;
	}

	public String getProd_img() {
		return prod_img;
	}

	public void setProd_img(String prod_img) {
		this.prod_img = prod_img;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	

}
