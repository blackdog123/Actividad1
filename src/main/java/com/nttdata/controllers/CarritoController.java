package com.nttdata.controllers;

import javax.validation.Valid;

import com.nttdata.models.Carrito;
import com.nttdata.services.CarritoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/carrito")
public class CarritoController {

    @Autowired
	CarritoService carritoService;
	
    @RequestMapping("")
	public String carrito(@ModelAttribute("producto") Carrito carrito, 
	Model model) 	
	{

		model.addAttribute("listaProductosCarrito", carritoService.ListaProductosCarrito());
		return "carrito/carrito.jsp";
	}
	
	@RequestMapping("/agregarProductoCarrito")

	public String agregarProductoCarrito(@Valid @ModelAttribute ("carrito") Carrito carrito )
	{
	
		carritoService.insertarProductoCarrito(carrito);
		
		return "redirect:/";
	}
    
	@RequestMapping("/eliminar")
	public String eliminarProductoCarrito(@RequestParam("id") Long id) {
		
		Carrito carrito = carritoService.buscarProductoCarritoId(id);
		
		if(carrito !=null) {
			carritoService.eliminarCarritobjeto(carrito);
		}
		
		return "redirect:/carrito";
	}
	
}
