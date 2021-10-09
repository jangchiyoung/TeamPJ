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
	private String category;
	private String name;
	private String content;
	private int price;
	private String img1;
	private String img2;
	private String img3;
	private String seller;
	private String buyer;
	private boolean like;
	private Timestamp date;
	private int readCount;
}