package com.zzxx.music.dao;

import java.util.List;

import com.zzxx.music.beans.User;

public interface UserDao {



        User findUserByEmail(String email);

        User getUserByEmailAndPassword(String email, String password);

        User addUser(User user);

        List<User> getAllUsers();

}
