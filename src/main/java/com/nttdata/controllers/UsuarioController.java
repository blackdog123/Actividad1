package com.nttdata.controllers;
import java.security.Principal;

import javax.servlet.http.HttpSession;
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

		/*
	http://localhost:8080/usuario/login
	*/
	//capturar la informacion del formulario
	@RequestMapping("/login")
	public String login(Principal principal, Model model, HttpSession session) {
		String nombre = principal.getName();

		Usuario usuario = usuarioService.findByNombre(nombre);
		model.addAttribute("nombre_usuario", usuario.getNombre());
		return "home/home.jsp";
	}
	/*public String login(@RequestParam("email") String email,
			@RequestParam("password") String password,
			HttpSession session
			) 
	{
		boolean resultado = usuarioService.loginUsuario(email,password);
		if(resultado) {
			Usuario usuario = usuarioService.findByEmail(email);
			//almacenando variables de sessio0n
			session.setAttribute("usuario_id", usuario.getId());
			session.setAttribute("nombre_usuario", usuario.getNombre());

			return "redirect:/";
			
		}else {
			
			return "redirect:/login";
		}
		
	}
	*/
	
	@RequestMapping("/crearCuenta")
	public String registroUsuario(@Valid @ModelAttribute("usuario") Usuario usuario)
	{
		Usuario usuario2 = usuarioService.findByEmail(usuario.getEmail());
		if(usuario2 != null) {

			System.out.println("usuario existe");
		}

		else {
			usuarioService.persistirUsuarioRol(usuario);
		}
		//retorno mensaje
		
		return "redirect:/login";
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
