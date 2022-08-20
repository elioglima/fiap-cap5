package br.com.fiap.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;

@Entity
@Table(name="tb_endereco")
public class Endereco {

	
	public Endereco() {
		super();
	}

	public Endereco(int id, String endereco, String cep, int numero, String complemento, String bairro, String cidade,
			String estado, String uf) {
		super();
		this.id = id;
		this.endereco = endereco;
		this.cep = cep;
		this.numero = numero;
		this.complemento = complemento;
		this.bairro = bairro;
		this.cidade = cidade;
		this.estado = estado;
		this.uf = uf;
	}

	@Id
	@SequenceGenerator(name="endereco", sequenceName = "sq_tb_endereco", allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "endereco")
	@Column(name="cd_endereco")
	private int id;
	
	@ManyToOne	
	@JoinColumn(name="cd_usuario")
	private Usuario usuario;
		
	@Column(name="nm_endereco",nullable = false, length = 100)
	private String endereco;
	
	@Column(name="nm_cep",nullable = false, length = 100)
	private String cep;
	
	@Column(name="numero",nullable = false)
	private int numero;
	
	@Column(name="nm_complemento",nullable = false, length = 100)
	private String complemento;
	
	@Column(name="nm_bairro",nullable = false, length = 100)
	private String bairro;
	
	@Column(name="nm_cidade",nullable = false, length = 100)
	private String cidade;
	
	@Column(name="nm_estado",nullable = false, length = 100)
	private String estado;
	
	@Column(name="nm_uf",nullable = false, length = 100)
	private String uf;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getUf() {
		return uf;
	}

	public void setUf(String uf) {
		this.uf = uf;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	
	
}
