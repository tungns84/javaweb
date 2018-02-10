package com.fps.services.security;

import com.fps.entities.Role;
import com.fps.repositories.security.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("roleService")
@Transactional
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleRepository roleRepository;

    @Override
    @Transactional(readOnly=true)
    public List<Role> listRoles() {
        return roleRepository.findAll();
    }

    @Override
    @Transactional(readOnly=true)
    public Role getRoleById(Long id) {
        return roleRepository.getOne(id);
    }

    @Override
    public void saveRole(Role role) {
        roleRepository.save(role);
    }

    @Override
    public void deleteRole(Long id) {
        Role role = roleRepository.getOne(id);
        roleRepository.delete(role);
    }
}
