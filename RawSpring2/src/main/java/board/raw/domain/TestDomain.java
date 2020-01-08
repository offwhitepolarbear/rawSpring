package board.raw.domain;

import java.util.Date;

public class TestDomain {
	
	int id ;
	String pwd;
	String name;
	Date date;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	@Override
	public String toString() {
		return "TestDomain [id=" + id + ", pwd=" + pwd + ", name=" + name + ", date=" + date + "]";
	}
	
}
