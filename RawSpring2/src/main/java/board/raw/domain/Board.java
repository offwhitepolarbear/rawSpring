package board.raw.domain;

public class Board {
	int id;
	String name;
	String description;
	int index;
	char isActive;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public char isActive() {
		return isActive;
	}
	public void setActive(char isActive) {
		this.isActive = isActive;
	}
	
	@Override
	public String toString() {
		return "Board [id=" + id + ", name=" + name + ", description=" + description + ", index=" + index
				+ ", isActive=" + isActive + "]";
	}
	
}
