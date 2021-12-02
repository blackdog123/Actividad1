package com.nttdata.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;



@Entity
@Table(name = "roles")
public class Role {

    @Id 
    @GeneratedValue(strategy = GenerationType.IDENTITY) 
    private Long id;
    private String nombre;

    @ManyToMany(mappedBy = "roles")
    private List<Usuario> usuarios;

    public Role() {
        super();
    }

    	
	public Role(String nombre) {
		super();
		this.nombre = nombre;
    }
    
   public String getNombre() {
       return nombre;
   }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }


    
}
