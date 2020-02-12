package board.raw.domain;

import java.util.Date;

public class User {
	
	private int id;
	private String email;
	private String password;
	private String name;
	private String nickname;
	private int phoneHead;
	private int phoneBody;
	private int phoneTail;
	private String profileImg;
	private Date registerTime;
	private char userRole;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getPhoneHead() {
		return phoneHead;
	}
	public void setPhoneHead(int phoneHead) {
		this.phoneHead = phoneHead;
	}
	public int getPhoneBody() {
		return phoneBody;
	}
	public void setPhoneBody(int phoneBody) {
		this.phoneBody = phoneBody;
	}
	public int getPhoneTail() {
		return phoneTail;
	}
	public void setPhoneTail(int phoneTail) {
		this.phoneTail = phoneTail;
	}
	public String getProfileImg() {
		return profileImg;
	}
	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}
	public Date getRegisterTime() {
		return registerTime;
	}
	public void setRegisterTime(Date registerTime) {
		this.registerTime = registerTime;
	}
	public char getUserRole() {
		return userRole;
	}
	public void setUserRole(char userRole) {
		this.userRole = userRole;
	}
	
	@Override
	public String toString() {
		return "User [id=" + id + ", email=" + email + ", password=" + password + ", name=" + name + ", nickname="
				+ nickname + ", phoneHead=" + phoneHead + ", phoneBody=" + phoneBody + ", phoneTail=" + phoneTail
				+ ", profileImg=" + profileImg + ", registerTime=" + registerTime + ", userRole=" + userRole + "]";
	}
	
}
