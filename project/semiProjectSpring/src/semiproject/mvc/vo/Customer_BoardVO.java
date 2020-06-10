package semiproject.mvc.vo;

import java.util.Date;

public class Customer_BoardVO {
//	c_num number(4) primary key not null,
//	c_type varchar2(50) not null,
//	c_writer varchar2(50) not null,
//	c_subject varchar2(50) not null,
//	c_content varchar2(4000) not null,
//	c_pwd varchar2(50) not null,
//	c_regdate date default sysdate,
//	c_anschk number(1),
//	c_ans varchar2(2000)
	
	private int c_num , c_anschk;
	private String c_type,c_writer,c_subject,c_content,c_pwd,c_ans;
	private String c_regdate;
	
	public int getC_num() {
		return c_num;
	}
	public void setC_num(int c_num) {
		this.c_num = c_num;
	}
	public int getC_anschk() {
		return c_anschk;
	}
	public void setC_anschk(int c_anschk) {
		this.c_anschk = c_anschk;
	}
	public String getC_type() {
		return c_type;
	}
	public void setC_type(String c_type) {
		this.c_type = c_type;
	}
	public String getC_writer() {
		return c_writer;
	}
	public void setC_writer(String c_writer) {
		this.c_writer = c_writer;
	}
	public String getC_subject() {
		return c_subject;
	}
	public void setC_subject(String c_subject) {
		this.c_subject = c_subject;
	}
	public String getC_content() {
		return c_content;
	}
	public void setC_content(String c_content) {
		this.c_content = c_content;
	}
	public String getC_pwd() {
		return c_pwd;
	}
	public void setC_pwd(String c_pwd) {
		this.c_pwd = c_pwd;
	}
	public String getC_ans() {
		return c_ans;
	}
	public void setC_ans(String c_ans) {
		this.c_ans = c_ans;
	}
	public String getC_regdate() {
		return c_regdate;
	}
	public void setC_regdate(String c_regdate) {
		this.c_regdate = c_regdate;
	}

	
}
