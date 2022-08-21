package br.com.fiap.teste;

import br.com.fiap.controller.*;

public class UsuarioCriacaoTest {
	public static void main(String[] args) {
		UsuarioController UsuarioController = new UsuarioController();
		UsuarioController.criar();
		UsuarioController.editar();
		UsuarioController.apagar();
		UsuarioController.fechar();	
		
	}
}
