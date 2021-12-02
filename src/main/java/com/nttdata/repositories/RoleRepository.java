package com.nttdata.repositories;

import java.util.List;

import com.nttdata.models.Role;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long>{
    
   List<Role> findByNombre(String nombre);
}
