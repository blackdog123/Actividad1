package com.nttdata.services;

import java.util.List;

import com.nttdata.models.Role;
import com.nttdata.repositories.RoleRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleService {
    
    @Autowired
    RoleRepository rr;

    public List<Role> findByNombre(String nombre) {
        return rr.findByNombre(nombre);
    }
}
