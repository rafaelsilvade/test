@Entity(name="Contato")
public class Contato {
	
	@Id @GeneratedValue
	private Integer Id;
	private boolean ativo;
	private String nome;
	private String tipo;
	private char sexo;
	
	public ContatoDao(String nome, boolean favorito, char sexo) {
		this.nome = nome;
		this.favorito = favorito;
		this.sexo = sexo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}


	public char getSexo() {
		return sexo;
	}

	public void setSexo(char sexo) {
		this.sexo = sexo;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
}
