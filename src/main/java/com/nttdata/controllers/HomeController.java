package com.nttdata.controllers;
import javax.servlet.http.HttpSession;

import com.nttdata.models.Producto;
import com.nttdata.models.Usuario;
import com.nttdata.services.HomeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class HomeController {

	@Autowired
	HomeService homeService;
	
    @RequestMapping("")
	public String index(@ModelAttribute("producto") Producto producto, 
	Model model, HttpSession session) 	
	{

		//obteniendo las variables de session 
		String nombre = (String) session.getAttribute("nombre_usuario");
		Long usuarioId = (Long) session.getAttribute("usuario_id");

		model.addAttribute("nombre_usuario", nombre);
		model.addAttribute("usuarioId", usuarioId);

		model.addAttribute("listaProductosHome", homeService.ListaProductosHome());
		return "home/home.jsp";
	}


	@RequestMapping("/login")
    public String login() 
    {
        return "usuario/login.jsp";
    }

	@RequestMapping("/registro")
    public String registro(@ModelAttribute("usuario") Usuario usuario) 
    {
        return "usuario/registro.jsp";
    }
	
}
