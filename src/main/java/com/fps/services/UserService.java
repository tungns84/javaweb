package com.fps.services;

import com.fps.entities.User;

public interface UserService {
	public User getUserByEmail(String email);
	public void saveUser(User user);
}
