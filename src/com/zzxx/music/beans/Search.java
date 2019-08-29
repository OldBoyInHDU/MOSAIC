package com.zzxx.music.beans;

public class Search {
    private Long select_id;
    private String name;
    private String type;
    public Search(){
    	
    };
    
    public Long getSelect_id() {
		return select_id;
	}



	public void setSelect_id(Long select_id) {
		this.select_id = select_id;
	}



	public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

	@Override
	public String toString() {
		return "Search [select_id=" + select_id + ", name=" + name + ", type=" + type + "]";
	}
    
}
