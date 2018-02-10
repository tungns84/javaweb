package com.fps.services.security;

import com.fps.entities.Role;

import java.util.List;

public interface RoleService {
    public List<Role> listRoles();
    public Role getRoleById(Long id);
    public void saveRole(Role role);
    public void deleteRole(Long id);
}
