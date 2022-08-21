package br.com.fiap.controller;

import br.com.fiap.entity.Endereco;
import br.com.fiap.entity.Usuario;

public class UsuarioController extends DBController {
	public UsuarioController() {
		super();		
	}
	
	public void fechar() {
		super.fechar();		
	}
	
	public void criar() {
		Usuario usuario1 = new Usuario();
		usuario1.setNome("Elio Gonçalves de Lima");
		this.persist(usuario1);		
		
		Usuario usuario2 = new Usuario();
		usuario2.setNome("Abigail Manello de Lima");
		this.persist(usuario2);
		
		Usuario usuario3 = new Usuario();
		usuario3.setNome("Kaique Bernardo");
		this.persist(usuario3);
		
		Endereco endereco1 = new Endereco();
		endereco1.setEndereco("Rua Alto Limpo");
		endereco1.setCep("04242-111");
		endereco1.setNumero(255);
		endereco1.setComplemento("Perto do metrô");
		endereco1.setBairro("Cidade SP");
		endereco1.setCidade("Juqueira");
		endereco1.setEstado("Sao Joao");
		endereco1.setUf("JQ");
		endereco1.setUsuario(usuario1);	
		this.persist(endereco1);
		
		Endereco endereco2 = new Endereco();
		endereco2.setEndereco("Rua Alto Limpo");
		endereco2.setCep("04242-111");
		endereco2.setNumero(255);
		endereco2.setComplemento("Perto do metrô");
		endereco2.setBairro("Cidade SP");
		endereco2.setCidade("Juqueira");
		endereco2.setEstado("Sao Joao");
		endereco2.setUf("JQ");
		endereco2.setUsuario(usuario2);	
		this.persist(endereco2);
		
		Endereco endereco3 = new Endereco();
		endereco3.setEndereco("Rua Alto Limpo");
		endereco3.setCep("04242-111");
		endereco3.setNumero(255);
		endereco3.setComplemento("Perto do metrô");
		endereco3.setBairro("Cidade SP");
		endereco3.setCidade("Juqueira");
		endereco3.setEstado("Sao Joao");
		endereco3.setUf("JQ");		
		endereco3.setUsuario(usuario3);	
		this.persist(endereco3);		
		this.execute();
	}	
	
	public void editar() {
		Usuario usuario = em.find(Usuario.class, 3);
		usuario.setNome("Roberto Silva");
		this.persist(usuario);
		this.execute();
	}

	public void apagar() {	
		try {
			Endereco endereco = em.find(Endereco.class, 3);
			this.remove(endereco);
			
			Usuario usuario = em.find(Usuario.class, 3);		
			this.remove(usuario);
			
			this.execute();			
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	@Override
	public String toString() {
		return "UsuarioController [getEm()=" + getEm() + ", getFabrica()=" + getFabrica() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	public void consultar(int id) {
		// TODO Auto-generated method stub
		System.out.println(this.toString());
	}
}
