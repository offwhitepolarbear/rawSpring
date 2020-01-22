package board.raw.domain;

public class Board {
	String name;
	String description;
	int index;
	boolean accessable;
	
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
	public boolean isAccessable() {
		return accessable;
	}
	public void setAccessable(boolean accessable) {
		this.accessable = accessable;
	}
	
	@Override
	public String toString() {
		return "Board [name=" + name + ", description=" + description + ", index=" + index + ", accessable="
				+ accessable + "]";
	}
		
}
