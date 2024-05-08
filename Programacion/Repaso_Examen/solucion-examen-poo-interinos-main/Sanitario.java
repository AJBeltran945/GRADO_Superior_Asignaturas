package simulacro;

/*
 
 La clase Sanitario extiende la clase Persona. 
 
 La clase Sanitario tiene dos atributos privados: especialidad y dias.

Implementaremos dos constructores definidos para la clase. 

El primer constructor es un constructor vacío que llama al constructor vacío de la superclase Persona. 

El segundo constructor tiene cinco argumentos: nombre, primerApellido, segundoApellido, especialidad y dias. 

Esee constructor llama al constructor de la superclase Persona con los argumentos nombre, primerApellido y segundoApellido.

También debe llamar a los métodos setEspecialidad() y setDias() para establecer los valores de los atributos correspondientes.

La clase también tiene dispondrá de un método llamado toString() que devuelve una representación de la clase. 

Ese método llama al método toString() de la superclase y agrega información adicional sobre los atributos de la clase Sanitario.

Finalmente, la clase debe tener varios métodos getter y setter para obtener y establecer los valores de los atributos.
*/

public class Sanitario extends Persona{
	//Atributos
	private String especialidad;
	private int dias;

	//Constructores
	public Sanitario() {
		super();
	}
	
	public Sanitario(String nombre, String primerApellido, String segundoApellido, String especialidad, int dias) {
		super(nombre,primerApellido,segundoApellido);
		this.setEspecialidad(especialidad);
		this.setDias(dias);
	}
	
	//Metodos
	@Override
	public String toString() {
		return super.toString()+ " Sanitario [especialidad=" + especialidad + ", dias=" + dias + "]";
	}

	
	//Getters y Setters
	public String getEspecialidad() {
		return especialidad;
	}

	public void setEspecialidad(String especialidad) {
		this.especialidad = especialidad;
	}

	public int getDias() {
		return dias;
	}

	public void setDias(int dias) {
		this.dias = dias;
	}
	
}