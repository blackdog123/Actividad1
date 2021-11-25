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

import com.nttdata.models.Usuario;
import com.nttdata.services.UsuarioService;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {
	/*
	private final UsuarioService us;
	
	public UsuarioController(UsuarioService usuarioService) {
		this.us = usuarioService;
	}
	*/
	
	//facilita la inyección de dependencia
	@Autowired
	UsuarioService usuarioService;
	

	//desplegar inicialmente el jsp
	@RequestMapping("")
	public String usuario(@ModelAttribute("usuario") Usuario usuario,
			Model model) {
		//List<Usuario> listaUsuarios= usuarioService.obtenerListaUsuarios();
		//lista de usuarios
		model.addAttribute("listaUsuarios", usuarioService.obtenerListaUsuarios());
		return "usuario/usuario.jsp";
	}
	
	//capturar la informacion del formulario
	@RequestMapping("/login")
	/*public String login(@RequestParam("nombre") String nombre,
			@RequestParam("apellido") String apellido,
			@RequestParam("limite") String limite,
			@RequestParam("cp") String codigoPostal
			) */
	public String login(@Valid @ModelAttribute("usuario") Usuario usuario)
	{
		System.out.println(usuario.getNombre()+" "+usuario.getApellido()+" "+usuario.getLimite()+" "+usuario.getCodigoPostal());
		//System.out.println(nombre+" "+apellido+" "+limite+" "+codigoPostal);
		
		usuarioService.insertarUsuario(usuario);
		
		return "redirect:/usuario";
	}
	
	@RequestMapping("/eliminar")
	public String eliminarUsuario(@RequestParam("id") Long id) {
		
		Usuario usuario = usuarioService.buscarUsuarioId(id);
		
		if(usuario !=null) {
			usuarioService.eliminarUsuarioObjeto(usuario);
		}
		
		return "redirect:/usuario";
	}
	
    @RequestMapping("/{id}/editar")
    public String edit(@PathVariable("id") Long id, Model model) {
    	System.out.println("editar");
    	Usuario usuario = usuarioService.buscarUsuarioId(id);
    	if(usuario !=null) {
		       model.addAttribute("usuario", usuario);
		       return "/usuario/editar.jsp";
		}
		
		return "redirect:/usuario";
    }
    
    @RequestMapping(value="/update/{id}", method=RequestMethod.PUT)
    public String update(@Valid @ModelAttribute("usuario") Usuario usuario, BindingResult result) {
    	System.out.println("Update");
        if (result.hasErrors()) {
            return "/usuario/editar.jsp";
        } else {
        	usuarioService.updateUsuario(usuario);
            return "redirect:/usuario";
        }
    }
	
}
