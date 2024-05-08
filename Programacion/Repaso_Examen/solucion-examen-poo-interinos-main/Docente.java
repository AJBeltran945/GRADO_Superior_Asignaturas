package simulacro;

/*

La clase Docente debe extiender de la clase Persona. La clase Docente tiene dos atributos privados: titulacion y puntos.

Debe implementar dos constructores. 

El primer constructor es un constructor vacío podemos llamar al constructor (vacío) de la superclase Persona. 

El segundo constructor tiene cinco argumentos: nombre, primerApellido, segundoApellido, titulacion y puntos. 

Ese constructor llama al constructor de la superclase Persona con los argumentos nombre, primerApellido y segundoApellido, y luego llama a los métodos setTitulacion() y setPuntos() para establecer los valores de los atributos correspondientes.

La clase debe tener un método llamado toString() que devuelve una representación de la información de la clase. 

Ese método debería llamar al método toString() de la superclase y agrega información adicional sobre los atributos de la clase Docente.

Finalmente, la clase tiene varios métodos getter y setter para obtener y establecer los valores de los atributos.
*/

public class Docente extends Persona {
	//Atributos
	private String titulacion;
	private float puntos;

	//Constructores
	public Docente() {
		super();
	}
	
	public Docente(String nombre, String primerApellido, String segundoApellido, String titulacion, float puntos){
		super(nombre,primerApellido,segundoApellido);
		this.setTitulacion(titulacion);
		this.setPuntos(puntos);
	}

	//Metodos
	@Override
	public String toString() {
		return super.toString()+ " Docente [titulacion=" + titulacion + ", puntos=" + puntos + "]";
	}
	
	
	//Getters y Setters
	public String getTitulacion() {
		return titulacion;
	}

	public void setTitulacion(String titulacion) {
		this.titulacion = titulacion;
	}

	public float getPuntos() {
		return puntos;
	}

	public void setPuntos(float puntos) {
		this.puntos = puntos;
	}
	
}