package com.jcpdev.dto;
import java.sql.Timestamp;

//lombok
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class productDto {
	private int no;
	private String product_category;
	private String product_name;
	private String product_content;
	private int product_price;
	private String product_img1;
	private String product_img2;
	private String product_img3;
	private String product_seller;
	private String product_buyer;
	private boolean product_like;
	private Timestamp product_date;
	private int product_readCount;
}