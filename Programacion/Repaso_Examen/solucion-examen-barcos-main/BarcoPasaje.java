
package barcos;

class BarcoPasaje implements BarcoInterfaz{
    private int eslora;
    private int numeroCamas = 100;
    
    /**
     * Constructor al que solo le pasamos los metros de eslora
     *
     * @param esl Metros de eslora
     */
    public BarcoPasaje(int esl){
        this.eslora = esl;
        System.out.println("Se crea barco de Pasaje con "+numeroCamas+" camas y "+eslora+" metros de eslora");
    }
    
    /**
     * Método que muestra un mensaje con la alarma del barco
     */
    public void alarma(){
        System.out.println("¡Pasajeros a sus puestos!");
    }
    
    /**
     * Método que muestra un mensaje de socorro pasaro por parámetro
     * @param m Mensaje de socorro
     */
    public void msgSocorro(String m){
        alarma();
        System.out.println("¡¡SOS!! "+m);
    }
}
