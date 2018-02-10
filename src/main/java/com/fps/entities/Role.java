package com.fps.entities;

import java.util.Set;
import javax.persistence.*;

@Entity
@Table(name = "role")
public class Role {
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private String role;
	
	@ManyToMany(mappedBy = "roles")
    private Set<User> users;
	
	@ManyToMany
    @JoinTable(
        name = "role_privilege", 
        joinColumns = @JoinColumn(
          name = "role_id", referencedColumnName = "id"), 
        inverseJoinColumns = @JoinColumn(
          name = "privilege_id", referencedColumnName = "id"))
    private Set<Privilege> privileges;

	@Column(name = "[DESC]")
	private String desc;

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public Set<User> getUsers() {
		return users;
	}
	public void setUsers(Set<User> users) {
		this.users = users;
	}
	public Set<Privilege> getPrivileges() {
		return privileges;
	}
	public void setPrivileges(Set<Privilege> privileges) {
		this.privileges = privileges;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}
}
