package com.jcpdev.dto;
//lombok
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class memberDto {
	private String member_id;
	private String member_password;
	private String member_name;
	private String member_tel;
	private String member_email;
	private String member_address;
	private String member_img;
}