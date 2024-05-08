package simulacro;

//Analizando lo que necesito en la clase persona

/*
La clase debe ser abstracta, no se instanciará, y tiene cuatro atributos privados: id, nombre, primerApellido y segundoApellido. El atributo estático privado llamado contador se inicializa en 0.

Implementamos dos constructores definidos para la clase. 

El primer constructor es un constructor vacío que no hace nada. 

El segundo constructor toma tres argumentos: nombre, primerApellido y segundoApellido. 

Necesitamos un constructor que llame a los métodos setId(), setNombre(), setPrimerApellido() y setSegundoApellido() para establecer los valores de los atributos correspondientes.

La clase también debe disponer de un método llamado toString() que devuelve una cadena representable con la información de la clase.

Finalmente, la clase dispone de varios métodos getter y setter para obtener y establecer los valores de los atributos. 

En el examen tuvimos como pista que el método setId() incrementa el valor del atributo estático contador en 1 y luego establece el valor del atributo id en el valor actual de contador.
*/

public abstract class Persona {
	//Atributos
	private int id;
	private String nombre;
	private String primerApellido;
	private String segundoApellido;
	private static int contador=0;
	
	//Constructores
	public Persona() {
		
	}
	
	public Persona (String nombre, String primerApellido, String segundoApellido) {
		this.setId();
		this.setNombre(nombre);
		this.setPrimerApellido(primerApellido);
		this.setSegundoApellido(segundoApellido);
	}
	
	//Métodos
	@Override
	public String toString() {
		return "Persona [id=" + id + ", nombre=" + nombre + ", primerApellido=" + primerApellido + ", segundoApellido="
				+ segundoApellido + "]";
	}
	
	
	//Getters y setters
	public void setId() {
		//Ahí iba la pista
		contador++;
		this.id=contador;
	}
	
	public int getId() {
		return this.id;
	}
	
	public void setNombre(String nombre) {
		this.nombre=nombre;
	}
	
	public String getNombre() {
		return this.nombre;
	}

	public String getPrimerApellido() {
		return primerApellido;
	}

	public void setPrimerApellido(String primerApellido) {
		this.primerApellido = primerApellido;
	}

	public String getSegundoApellido() {
		return segundoApellido;
	}

	public void setSegundoApellido(String segundoApellido) {
		this.segundoApellido = segundoApellido;
	}

	public static int getContador() {
		return contador;
	}
	
}