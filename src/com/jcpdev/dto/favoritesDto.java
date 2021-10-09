package com.jcpdev.dto;

//lombok
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class favoritesDto {
	private int no;
	private int p_no;
	private String m_id;
}