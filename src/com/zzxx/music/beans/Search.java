package com.zzxx.music.beans;

public class Search {
    private int selectid;
    private String name;
    private String type;
    public Search(){};

    public int getSelectid() {
        return selectid;
    }

    public void setSelectid(int selectid) {
        this.selectid = selectid;
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
        return "Search{" +
                "selectid=" + selectid +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}
