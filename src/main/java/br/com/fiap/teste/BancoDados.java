package br.com.fiap.teste;

import jakarta.persistence.Persistence;

public class BancoDados {
	public static void main(String[] args) {
		Persistence.createEntityManagerFactory("smartcities").createEntityManager(); 
	}
}
