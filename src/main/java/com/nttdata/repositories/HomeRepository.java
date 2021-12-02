package com.nttdata.repositories;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

import com.nttdata.models.Producto;

@Repository
public interface HomeRepository extends CrudRepository<Producto, Long>{
    List<Producto> findAll();
}
