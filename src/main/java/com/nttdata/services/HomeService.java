package com.nttdata.services;

import com.nttdata.repositories.HomeRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import com.nttdata.models.Producto;

@Service
public class HomeService {

    @Autowired
    HomeRepository homeRepository;

    public List<Producto> ListaProductosHome() {
		
		return homeRepository.findAll();
	}



    
}
