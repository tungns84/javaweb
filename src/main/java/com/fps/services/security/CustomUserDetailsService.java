package com.fps.services.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.fps.entities.Privilege;
import com.fps.entities.Role;
import com.fps.entities.User;
import com.fps.repositories.security.UserRepository;
import org.springframework.transaction.annotation.Transactional;

@Service("userDetailsService")

public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private UserRepository userRepository;

	@Override
    @Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		try {
			final User loginUser = userRepository.getByEmail(email);
			if (loginUser == null)
				throw new UsernameNotFoundException("User with " + email + "not found!");
			
			return new org.springframework.security.core.userdetails.User(loginUser.getName(),loginUser.getPassword(),loginUser.isEnabled(),true,true,true,getAuthorities(loginUser.getRoles()));
		} catch (final Exception e) {
			throw new RuntimeException(e);
		}
	}
	private final Collection<? extends GrantedAuthority> getAuthorities(final Collection<Role> roles) {
        return getGrantedAuthorities(getPrivileges(roles));
    }

    private final List<String> getPrivileges(final Collection<Role> roles) {
        final List<String> privileges = new ArrayList<String>();
        final List<Privilege> collection = new ArrayList<Privilege>();
        for (final Role role : roles) {
            collection.addAll(role.getPrivileges());
        }
        for (final Privilege item : collection) {
            privileges.add(item.getCode());
        }
        
        return privileges;
    }
    
    private final List<GrantedAuthority> getGrantedAuthorities(final List<String> privileges) {
        final List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        for (final String privilege : privileges) {
            authorities.add(new SimpleGrantedAuthority(privilege));
        }
        return authorities;
    }
}
