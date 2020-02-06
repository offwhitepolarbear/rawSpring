package board.raw.domain;

import java.util.Date;

public class Article {
	private int id;
	private int targetBoardId;
	private String title;
	private String content;
	private int userId;
	private String userNickname;
	private Date registrationTime;
	private boolean isActive;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTargetBoardId() {
		return targetBoardId;
	}
	public void setTargetBoardId(int targetBoardId) {
		this.targetBoardId = targetBoardId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public Date getRegistrationTime() {
		return registrationTime;
	}
	public void setRegistrationTime(Date registrationTime) {
		this.registrationTime = registrationTime;
	}
	public boolean isActive() {
		return isActive;
	}
	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
	@Override
	public String toString() {
		return "Article [id=" + id + ", targetBoardId=" + targetBoardId + ", title=" + title + ", content=" + content
				+ ", userId=" + userId + ", userNickname=" + userNickname + ", registrationTime=" + registrationTime
				+ ", isActive=" + isActive + "]";
	}
	
}
