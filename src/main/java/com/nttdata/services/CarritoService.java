package com.nttdata.services;

import java.util.List;

import javax.validation.Valid;

import com.nttdata.repositories.CarritoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nttdata.models.Carrito;

@Service
public class CarritoService {

    @Autowired
    CarritoRepository carritoRepository;

    public List<Carrito> ListaProductosCarrito() {
		
	return carritoRepository.findAll();
	}

    public void insertarProductoCarrito(@Valid Carrito carrito) {
        carritoRepository.save(carrito);
    }

    public void eliminarProductoCarrito(Long id) {
		carritoRepository.deleteById(id);
	}

	public void eliminarCarritobjeto(Carrito carrito) {
		carritoRepository.delete(carrito);		
	}

    public Carrito buscarProductoCarritoId(Long id) {	
		return carritoRepository.findById(id).get();
	}

    
}
