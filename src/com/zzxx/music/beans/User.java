package com.zzxx.music.beans;

public class User {
    private String uuid;
    private String username;
    private String email;
    private String password;
    private String mobilenumber;
    private String aboutme;
    private String info;
    private String location;
    
    public String getAboutme() {
		return aboutme;
	}

	public void setAboutme(String aboutme) {
		this.aboutme = aboutme;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public User(){

    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMobilenumber() {
        return mobilenumber;
    }

    public void setMobilenumber(String mobilenumber) {
        this.mobilenumber = mobilenumber;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

	@Override
	public String toString() {
		return "User [uuid=" + uuid + ", username=" + username + ", email=" + email + ", password=" + password
				+ ", mobilenumber=" + mobilenumber + ", aboutme=" + aboutme + ", info=" + info + ", location="
				+ location + "]";
	}

    
}
