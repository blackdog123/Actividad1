package com.nttdata.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="ventas")
public class Venta {
	@Id 
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Long id;
	private String nombreComprador;
	private String fecha;
	private int cantidad;	
	
	public Venta() {
		super();
	}
	
	public Venta(String nombreComprador, String fecha, int cantidad) {
		super();
		this.nombreComprador = nombreComprador;
		this.fecha = fecha;
		this.cantidad = cantidad;
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNombreComprador() {
		return nombreComprador;
	}

	public void setNombreComprador(String nombreComprador) {
		this.nombreComprador = nombreComprador;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

}
