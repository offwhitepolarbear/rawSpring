package board.raw.domain;

import java.sql.Timestamp;

public class Reply {
	private int id;
	private int originId;
	private int targetType;
	private int targetId;
	private int depth;
	private String content;
	private int userId;
	private String userNickname;
	private Timestamp registrationTime;
	private boolean isActive;
	

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getOriginId() {
		return originId;
	}
	public void setOriginId(int originId) {
		this.originId = originId;
	}
	public int getTargetType() {
		return targetType;
	}
	public void setTargetType(int targetType) {
		this.targetType = targetType;
	}
	public int getTargetId() {
		return targetId;
	}
	public void setTargetId(int targetId) {
		this.targetId = targetId;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
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
	public Timestamp getRegistrationTime() {
		return registrationTime;
	}
	public void setRegistrationTime(Timestamp registrationTime) {
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
		return "Reply [id=" + id + ", targetType=" + targetType + ", targetId=" + targetId + ", content=" + content
				+ ", userId=" + userId + ", userNickname=" + userNickname + ", registrationTime=" + registrationTime
				+ ", isActive=" + isActive + "]";
	}
	
}
