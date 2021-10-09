package com.jcpdev.dto;

import java.sql.Timestamp;

//lombok
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class mailDto {
	private int no;
	private String content;
	private String sendid;
	private String postid;
	private int p_no;
	private Timestamp date;
}