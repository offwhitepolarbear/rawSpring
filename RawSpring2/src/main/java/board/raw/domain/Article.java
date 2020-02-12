package board.raw.domain;

import java.sql.Timestamp;

public class Article {
	
	private int id;
	private int targetBoardId;
	private String boardName;
	private int originArticleId;
	private int targetArticleId;
	private int depth;
	private String title;
	private String content;
	private int userId;
	private String userNickname;
	private Timestamp registrationTime;
	private int like;
	private int disLike;
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
	public String getBoardName() {
		return boardName;
	}
	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}
	public int getOriginArticleId() {
		return originArticleId;
	}
	public void setOriginArticleId(int originArticleId) {
		this.originArticleId = originArticleId;
	}
	public int getTargetArticleId() {
		return targetArticleId;
	}
	public void setTargetArticleId(int targetArticleId) {
		this.targetArticleId = targetArticleId;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
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
	public Timestamp getRegistrationTime() {
		return registrationTime;
	}
	public void setRegistrationTime(Timestamp registrationTime) {
		this.registrationTime = registrationTime;
	}
	public int getLike() {
		return like;
	}
	public void setLike(int like) {
		this.like = like;
	}
	public int getDisLike() {
		return disLike;
	}
	public void setDisLike(int disLike) {
		this.disLike = disLike;
	}
	public boolean isActive() {
		return isActive;
	}
	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
	
	@Override
	public String toString() {
		return "Article [id=" + id + ", targetBoardId=" + targetBoardId + ", originArticleId=" + originArticleId
				+ ", targetArticleId=" + targetArticleId + ", depth=" + depth + ", title=" + title + ", content="
				+ content + ", userId=" + userId + ", userNickname=" + userNickname + ", registrationTime="
				+ registrationTime + ", like=" + like + ", disLike=" + disLike + ", isActive=" + isActive + "]";
	}
	
}
