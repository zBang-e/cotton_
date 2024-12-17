package org.zerock.member.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MemberVO {
	
	//member table
	private String id;
	private String pw;
	private String name;
	private String gender;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date birth;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date regDate;
	private String tel;
	private String email;
	private String address;
	private String status;
	private String photo;

	//grade table
	private int gradeNo;
	private String gradeName;

}
