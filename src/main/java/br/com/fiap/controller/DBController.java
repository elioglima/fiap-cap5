package br.com.fiap.controller;

import jakarta.persistence.*;

public class DBController {
	protected EntityManager em;
	protected EntityManagerFactory fabrica;
	
	
	public DBController() {		
		super();
		System.out.println("Iniciando Conexão..");
		this.setFabrica(Persistence.createEntityManagerFactory("smartcities"));
		this.setEm(fabrica.createEntityManager()); 
	}
	
	protected EntityManager getEm() {
		return em;
	}

	protected void setEm(EntityManager entityManager) {
		this.em = entityManager;
	}

	public EntityManagerFactory getFabrica() {
		return fabrica;
	}

	public void setFabrica(EntityManagerFactory fabrica) {
		this.fabrica = fabrica;
	}

	protected void persist(Object entity) {
		this.em.persist(entity);
	}
	
	protected void remove(Object entity) {
		this.em.remove(entity);;
	}
	
	protected void execute() {
		
		try {
			this.em.getTransaction().begin();
			this.em.getTransaction().commit();
			
		} catch (Exception e) {
			if (em.getTransaction().isActive()) {
				em.getTransaction().rollback();
			}
		}
		
		
	}
	
	protected void fechar() {
		this.em.close();
		this.fabrica.close();
		System.out.println("Conexão finalizada..");
	}	
}
