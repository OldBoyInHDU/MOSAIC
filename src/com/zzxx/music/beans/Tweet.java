package com.zzxx.music.beans;

public class Tweet {
	private Long tweet_id;
	private String tweet_user_uuid;
	private String tweets;
	public Long getTweet_id() {
		return tweet_id;
	}
	public void setTweet_id(Long tweet_id) {
		this.tweet_id = tweet_id;
	}
	public String getTweet_user_uuid() {
		return tweet_user_uuid;
	}
	public void setTweet_user_uuid(String tweet_user_uuid) {
		this.tweet_user_uuid = tweet_user_uuid;
	}
	public String getTweets() {
		return tweets;
	}
	public void setTweets(String tweets) {
		this.tweets = tweets;
	}
	public Tweet() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Tweet [tweet_id=" + tweet_id + ", tweet_user_uuid=" + tweet_user_uuid + ", tweets=" + tweets + "]";
	}
	
	
}
