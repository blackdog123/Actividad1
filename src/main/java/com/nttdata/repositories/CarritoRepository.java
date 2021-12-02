package com.nttdata.repositories;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

import com.nttdata.models.Carrito;

import org.springframework.stereotype.Repository;

@Repository
public interface CarritoRepository extends CrudRepository<Carrito, Long> {
    List<Carrito> findAll();
}
