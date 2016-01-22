package br.com.rafael.crud.modelo;

public class Cliente extends Pessoa {

	private String email;

	public Cliente() {

	}

	public Cliente(String nome, String sobrenome, String email) {
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
