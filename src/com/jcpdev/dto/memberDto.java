package com.jcpdev.dto;
//lombok
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class memberDto {
	private String id;
	private String password;
	private String name;
	private String tel;
	private String email;
	private String address;
	private String img;
}