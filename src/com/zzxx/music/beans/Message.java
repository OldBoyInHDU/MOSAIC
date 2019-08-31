package com.zzxx.music.beans;

public class Message {
	private Long message_id;
	private String message_user_uuid;//登录用户的id
	private String cid;//被访问用户的id
	private String message_content;
	public Long getMessage_id() {
		return message_id;
	}
	public void setMessage_id(Long message_id) {
		this.message_id = message_id;
	}
	public String getMessage_user_uuid() {
		return message_user_uuid;
	}
	public void setMessage_user_uuid(String message_user_uuid) {
		this.message_user_uuid = message_user_uuid;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getMessage_content() {
		return message_content;
	}
	public void setMessage_content(String message_content) {
		this.message_content = message_content;
	}
	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Message [message_id=" + message_id + ", message_user_uuid=" + message_user_uuid + ", cid=" + cid
				+ ", message_content=" + message_content + "]";
	}
	
}
