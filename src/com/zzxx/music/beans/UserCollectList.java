package com.zzxx.music.beans;

public class UserCollectList {
	private Long collection_id;
	private String usercollectlist_user_uuid;
	private String collectlist_name;
	public Long getCollection_id() {
		return collection_id;
	}
	public void setCollection_id(Long collection_id) {
		this.collection_id = collection_id;
	}
	public String getUsercollectlist_user_uuid() {
		return usercollectlist_user_uuid;
	}
	public void setUsercollectlist_user_uuid(String usercollectlist_user_uuid) {
		this.usercollectlist_user_uuid = usercollectlist_user_uuid;
	}
	public String getCollectlist_name() {
		return collectlist_name;
	}
	public void setCollectlist_name(String collectlist_name) {
		this.collectlist_name = collectlist_name;
	}
	public UserCollectList() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "UserCollectList [collection_id=" + collection_id + ", usercollectlist_user_uuid="
				+ usercollectlist_user_uuid + ", collectlist_name=" + collectlist_name + "]";
	}
	
}
