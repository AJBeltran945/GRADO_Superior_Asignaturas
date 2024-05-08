package simulacro;

/*

La clase Plaza debe tener cuatro atributos privados: id, tipo, adjudicada y persona.

Y un constructor definido para la clase que tiene dos argumentos: id y tipo. 

Ese constructor dispone de los métodos setId(), setTipo(), setAdjudicada() y setPersona() para establecer los valores de los atributos correspondientes.

La clase también tiene un método llamado toString() que devuelve una representación de cadena de la instancia de la clase. Este método construye una cadena que contiene información sobre los atributos de la clase. Si el atributo adjudicada es verdadero, se agrega información adicional sobre la persona asociada con la plaza. Si el tipo de plaza es 'D', se agrega información sobre la titulación y los puntos del docente asociado con la plaza. Si el tipo de plaza es diferente de 'D', se agrega información sobre la especialidad y los días del sanitario asociado con la plaza.

Finalmente, la clase tiene varios métodos getter y setter para obtener y establecer los valores de los atributos.
*/

public class Plaza {
	//Atributos
	private String id;
	private char tipo;
	private boolean adjudicada;
	private Persona persona;
	
	//Constructores
	public Plaza(String id, char tipo) {
		this.setId(id);
		this.setTipo(tipo);
		this.setAdjudicada(false);
		this.setPersona(null);
	}

	//Metodos
	@Override
	public String toString() {
		String texto =
				"------------------------------------\n"
				+ "ID Plaza "+this.getId()+"\n"
				+ "Tipo: "+this.getTipo()+"\n";
		if (this.isAdjudicada()) {
			texto=texto+
					"Adjudicada: ADJUDICADA\n"
					+ "ID: "+this.getPersona().getId()+"\n"
					+ "Nombre: "+this.getPersona().getNombre()+"\n"
					+ "Apellido1: "+this.getPersona().getPrimerApellido()+"\n"
					+ "Apellido2: "+this.getPersona().getSegundoApellido()+"\n"
					;
			if (this.getTipo()=='D') {
				texto=texto
						+"Titulacion: "+((Docente)this.getPersona()).getTitulacion()+"\n"
						+ "Puntos: "+((Docente)this.getPersona()).getPuntos()+"\n"
						;
			}else {
				texto=texto
						+"Especialidad: "+((Sanitario)this.getPersona()).getEspecialidad()+"\n"
						+ "Dias: "+((Sanitario)this.getPersona()).getDias()+"\n"
						;
			}
		}else {
			texto=texto+
					"Adjudicada: NO ADJUDICADA\n";
		}
		
		return texto;
	}
	
	//Getters y Setters
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public char getTipo() {
		return tipo;
	}

	public void setTipo(char tipo) {
		this.tipo = tipo;
	}

	public boolean isAdjudicada() {
		return adjudicada;
	}

	public void setAdjudicada(boolean adjudicada) {
		this.adjudicada = adjudicada;
	}

	public Persona getPersona() {
		return persona;
	}

	public void setPersona(Persona persona) {
		this.persona = persona;
	}
		
}