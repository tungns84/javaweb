package com.fps.repositories.security;

import com.fps.entities.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("roleRepository")
public interface RoleRepository extends JpaRepository<Role, Long> {
	Role getByRole(String role);
}
