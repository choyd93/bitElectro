package com.bc.model.vo;

import java.sql.Date;

public class NoticeVO {
	private String  csubject, ccontent, cimage, ccategory, cstatus;
	
	private int cno, csecret;

	private Date crdate;
	
	public NoticeVO() {}

	public NoticeVO(String csubject, String ccontent, String cimage, String ccategory, String cstatus, int cno,
			int csecret, Date crdate) {
		super();
		this.csubject = csubject;
		this.ccontent = ccontent;
		this.cimage = cimage;
		this.ccategory = ccategory;
		this.cstatus = cstatus;
		this.cno = cno;
		this.csecret = csecret;
		this.crdate = crdate;
	}

	public String getCsubject() {
		return csubject;
	}

	public void setCsubject(String csubject) {
		this.csubject = csubject;
	}

	public String getCcontent() {
		return ccontent;
	}

	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}

	public String getCimage() {
		return cimage;
	}

	public void setCimage(String cimage) {
		this.cimage = cimage;
	}

	public String getCcategory() {
		return ccategory;
	}

	public void setCcategory(String ccategory) {
		this.ccategory = ccategory;
	}

	public String getCstatus() {
		return cstatus;
	}

	public void setCstatus(String cstatus) {
		this.cstatus = cstatus;
	}

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public int getCsecret() {
		return csecret;
	}

	public void setCsecret(int csecret) {
		this.csecret = csecret;
	}

	public Date getCrdate() {
		return crdate;
	}

	public void setCrdate(Date crdate) {
		this.crdate = crdate;
	}

	@Override
	public String toString() {
		return "NoticeVO [csubject=" + csubject + ", ccontent=" + ccontent + ", cimage=" + cimage + ", ccategory="
				+ ccategory + ", cstatus=" + cstatus + ", cno=" + cno + ", csecret=" + csecret + ", crdate=" + crdate
				+ "]";
	}

}