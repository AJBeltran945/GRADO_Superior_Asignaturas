package simulacro;
import java.util.ArrayList;

/*

La clase Principal deber disponer de dos métodos estáticos: adjudicarPlazas() y mostrarAdjudicaciones().

El método mostrarAdjudicaciones() toma un argumento: una lista de plazas. Este método itera sobre la lista de plazas y muestra información sobre las plazas adjudicadas. Primero muestra información sobre las plazas adjudicadas a docentes y luego muestra información sobre las plazas adjudicadas a sanitarios.

*/

public class Principal {
	
	/*
	 * adjudicarPlazas
	 * 
	 * Este método asignará plazas a personas en función del mayor número de puntos o días. 
	 * 
	 * Las plazas adjudicadas se marcan como tales y las personas asignadas se eliminan de la lista.
	 * 
	 * El método adjudicarPlazas() tendrá dos argumentos: una lista de plazas y una
	 * lista de personas. 
	 * 
	 * Primero se itera sobre la lista de plazas y, para cada
	 * plaza, busca la persona con el mayor número de puntos (si la plaza es de tipo
	 * 'D') o el mayor número de días (si la plaza es de tipo 'S') y asigna esa
	 * persona a la plaza.
	 * 
	 * Para hacer esto, el método utiliza dos bucles anidados. 
	 * Un bucle externo itera sobre la lista de plazas y un bucle interno itera sobre la lista de personas. 
	 * 
	 * Dentro del bucle interno, el método verifica si la persona actual es una instancia de Docente o Sanitario 
	 * 
	 * y compara sus puntos o días con el valor máximo actual. 
	 * 
	 * Si el valor es mayor que el valor máximo actual, se actualiza el valor máximo y se guarda el índice de la persona. 
	 * 
	 * Después de que se complete el bucle interno, si se encontró una persona con un valor máximo válido, se asigna esa persona a la plaza y se elimina de la lista de personas.
	 * 
	 * 
	 */

	public static void adjudicarPlazas(ArrayList<Plaza> listaPlaza, ArrayList<Persona> listaPersona) {
		
		for (int i=0; i<listaPlaza.size();i++) {
			int index = -1;
			if (listaPlaza.get(i).getTipo()=='D') {
				Docente docente = new Docente();
				docente.setPuntos(-1);
				for (int j=0;j<listaPersona.size();j++) {
					if (listaPersona.get(j) instanceof Docente) {
						if (((Docente)(listaPersona.get(j))).getPuntos()>docente.getPuntos()) {
							docente=(Docente) listaPersona.get(j);
							index=j;
						}
					}
				}
				if (docente.getPuntos()!=-1) {
					//asigna al docente la plaza
					listaPlaza.get(i).setPersona(docente);
					//marca la plaza como adjudicada
					listaPlaza.get(i).setAdjudicada(true);
					//la persona asignada se elimina de la lista
					listaPersona.remove(index);
				}
				
			}else {
				Sanitario sanitario = new Sanitario();
				sanitario.setDias(-1);
				for (int j=0;j<listaPersona.size();j++) {
					if(listaPersona.get(j) instanceof Sanitario) {
						if (((Sanitario)listaPersona.get(j)).getDias()>sanitario.getDias()) {
							sanitario=(Sanitario) listaPersona.get(j);
							index = j;
						}
					}
				}
				if (sanitario.getDias()!=-1) {
					//asigna al sanitario la plaza
					listaPlaza.get(i).setPersona(sanitario);
					//marca la plaza como adjudicada
					listaPlaza.get(i).setAdjudicada(true);
					//la persona asignada se elimina de la lista
					listaPersona.remove(index);
				}
			}
		}	
	}

	public static void mostrarAdjudicaciones(ArrayList<Plaza> listaPlaza) {
		System.out.println("============================================\r\n"
				+ "La última adjudicación de plazas ha producido\r\n"
				+ "los siguientes resultados para DOCENTES\r\n"
				+ "============================================\r\n"
				+ "");
		for (int i=0;i<listaPlaza.size();i++) {
			if (listaPlaza.get(i).getTipo()=='D') {
				System.out.println(listaPlaza.get(i).toString());
			}
		}
		
		
		System.out.println("=============================================\r\n"
				+ "La última adjudicación de plazas ha producido\r\n"
				+ "los siguientes resultados para SANITARIOS\r\n"
				+ "=============================================\r\n"
				+ "");
		for (int i=0;i<listaPlaza.size();i++) {
			if (listaPlaza.get(i).getTipo()=='S') {
				System.out.println(listaPlaza.get(i).toString());
			}
		}
	}
	
	
	/*
	 * simularAdjuducacion
	 * 
	 * El método muestra información sobre las plazas adjudicadas a
	 * docentes y sanitarios.El método tiene un argumento: una lista de plazas.
	 * 
	 * El método itera sobre la lista de plazas y muestra información sobre las
	 * plazas adjudicadas. 
	 * 
	 * Primero muestra información sobre las plazas adjudicadas
	 * a docentes y luego muestra información sobre las plazas adjudicadas a
	 * sanitarios.
	 * 
	 * Para hacer esto, el método utiliza dos bucles. 
	 * 
	 * El primer bucle itera sobre la lista de plazas y verifica si el tipo de plaza es 'D'. 
	 * 
	 * Si es así, llama al método toString() de la plaza y muestra el resultado. 
	 * 
	 * Después de completar el primer bucle, el método muestra un mensaje y luego comienza el
	 * segundo bucle. 
	 * 
	 * El segundo bucle itera sobre la lista de plazas y verifica si
	 * el tipo de plaza es 'S'. Si es así, llama al método toString() de la plaza y
	 * muestra el resultado.
	 * 
	 */
	
	/*
	 * simularAdjuducacion
	 * 
	 * El método agrega diez plazas y seis personas a las listas
	 * proporcionadas como argumentos.
	 * 
	 * El método tiene dos argumentos: 
	 * una lista de plazas y una lista de personas.
	 * 
	 * Primero crea diez instancias de la clase Plaza con diferentes valores para
	 * los atributos id y tipo y las agrega a la lista de plazas. 
	 * 
	 * Luego, crea seis instancias de las clases Docente y Sanitario con diferentes valores
	 * para sus atributos y las agrega a la lista de personas.
	 */
	
	public static void simularAdjuducacion(ArrayList<Plaza> listaPlaza, ArrayList<Persona> listaPersona) {
		Plaza plazaPalma = new Plaza("0",'D');
		Plaza plazaCiutadella = new Plaza("1",'S');
		Plaza plazaInca = new Plaza("2",'D');
		Plaza plazaMahon = new Plaza("3",'S');
		Plaza plazaMuro = new Plaza("4",'D');
		Plaza plazaLlubi = new Plaza("5",'S');
		Plaza plazaSineu = new Plaza("6",'D');
		Plaza plazaSaPobla = new Plaza("7",'S');
		Plaza plazaFormentera = new Plaza("8",'D');
		Plaza plazaMarratxi = new Plaza("9",'S');
		
		listaPlaza.add(plazaPalma);
		listaPlaza.add(plazaCiutadella);
		listaPlaza.add(plazaInca);
		listaPlaza.add(plazaMahon);
		listaPlaza.add(plazaMuro);
		listaPlaza.add(plazaLlubi);
		listaPlaza.add(plazaSineu);
		listaPlaza.add(plazaSaPobla);
		listaPlaza.add(plazaFormentera);
		listaPlaza.add(plazaMarratxi);
		
		Docente jaumeBarcelo = new Docente("Jaume","Barceló","Vicenç","Doctor", (float) 2.4);
		Docente marcCosta = new Docente("Marc","Costa","Marquez","Máster", (float) 3.2);
		Docente maximoFernandez = new Docente("Máximo","Fernández","Riera","Grado", (float) 2.7);
		Sanitario franciscaOliver = new Sanitario("Francisca","Oliver","Sanz","Grado", 13);
		Sanitario margaritaRobles = new Sanitario("Margarita","Robles","Perez","Master", 7);
		Sanitario paulaSanchez = new Sanitario("Paula","Sanchez","Aguirre","Doctor", 31);
		
		listaPersona.add(jaumeBarcelo);
		listaPersona.add(marcCosta);
		listaPersona.add(maximoFernandez);
		listaPersona.add(franciscaOliver);
		listaPersona.add(margaritaRobles);
		listaPersona.add(paulaSanchez);
		
	}
	
	/*
	 * El método principal simula el proceso de adjudicación de plazas a personas 
	 * y finalmente muestra información sobre las plazas adjudicadas.
	 * 
	 * Creamos dos listas vacías: una lista de plazas y una lista de personas. 
	 * 
	 * Luego, llamamos al método simularAdjuducacion() con las dos listas como argumentos 
	 * para agregar plazas y personas a las listas. 
	 * 
	 * Después, llamamos al método adjudicarPlazas() con las dos listas como argumentos 
	 * 
	 * para asignar plazas a personas. 
	 * 
	 * Finalmente, llama al método mostrarAdjudicaciones() con la lista de plazas como argumento 
	 * 
	 * para mostrar información sobre las plazas adjudicadas.
	 * 
	 */	
	public static void main(String[] args) {
		ArrayList<Plaza> listaPlaza = new ArrayList<Plaza>();
		ArrayList<Persona> listaPersona = new ArrayList<Persona>();
		
		simularAdjuducacion(listaPlaza,listaPersona);
		adjudicarPlazas(listaPlaza,listaPersona);
		mostrarAdjudicaciones(listaPlaza);

	}

}