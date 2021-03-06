package com.nttdata.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.nttdata.models.Producto;
import com.nttdata.services.ProductoService;

@Controller
@RequestMapping("/producto")
public class ProductoController {

	@Autowired
	ProductoService productoService;
	
	@RequestMapping("")
	public String producto(@ModelAttribute("producto") Producto producto,
			Model model) {

		model.addAttribute("listaProductos", productoService.obtenerListaProductos());
		return "producto/producto.jsp";
	}
	
	@RequestMapping("/agregarProducto")

	public String agregarProducto(@Valid @ModelAttribute ("producto") Producto producto )
	{
		System.out.println(producto.getNombre()+" "+ producto.getMarca()+" "+producto.getTipo()+" "+producto.getDescripcion()+" "+producto.getPrecio());
	
	
		productoService.insertarProducto(producto);
		
		return "redirect:/producto";
	}
	
	@RequestMapping("/eliminar")
	public String eliminarProducto(@RequestParam("id") Long id) {
		
		Producto producto = productoService.buscarProductoId(id);
		
		if(producto !=null) {
			productoService.eliminarUsuarioObjeto(producto);
		}
		
		return "redirect:/producto";
	}
	
    @RequestMapping("/{id}/editar")
    public String edit(@PathVariable("id") Long id, Model model) {
    	System.out.println("editar");
    	Producto producto = productoService.buscarProductoId(id);
    	if(producto !=null) {
		       model.addAttribute("producto", producto);
		       return "/producto/editar_producto.jsp";
		}
		
		return "redirect:/producto";
    }
    
    @RequestMapping(value="/update/{id}", method=RequestMethod.PUT)
    public String update(@Valid @ModelAttribute("usuario") Producto producto, BindingResult result) {
    	System.out.println("Update");
        if (result.hasErrors()) {
            return "/producto/editar.jsp";
        } else {
        	productoService.updateProducto(producto);
            return "redirect:/producto";
        }
    }
	
}
