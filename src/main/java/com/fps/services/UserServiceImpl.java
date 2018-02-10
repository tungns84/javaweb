package com.fps.services;

import java.util.Arrays;
import java.util.HashSet;

import com.fps.entities.Role;
import com.fps.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.fps.repositories.security.RoleRepository;
import com.fps.repositories.security.UserRepository;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;
	@Autowired
	private RoleRepository roleRepository;
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Override
	public User getUserByEmail(String email) {
		return userRepository.getByEmail(email);
	}

	@Override
	public void saveUser(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setCreatedDate(System.currentTimeMillis());
		Role userDefaultRole = roleRepository.getByRole("ROLE_ADMIN");
		user.setRoles(new HashSet<Role>(Arrays.asList(userDefaultRole)));

		userRepository.save(user);

	}

}
