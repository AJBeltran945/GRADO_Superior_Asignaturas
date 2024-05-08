package barcos;

class PortaAviones implements BarcoInterfaz {

    private int aviones = 20;
    private int tripulacion;

    /**
     * Constructor al que solo le pasamos los metros de eslora
     * @param esl Metros de eslora
     */
    public PortaAviones(int marineros) {
        this.tripulacion = marineros;
        System.out.println("Se crea barco Portaaviones con " + marineros + " marineros");
    }

    /**
     * Método que muestra un mensaje con la alarma del barco
     */
    public void alarma() {
        System.out.println("¡Marineros a sus puestos!");
    }

    /**
     * Método que muestra un mensaje de socorro pasaro por parámetro
     *
     * @param m Mensaje de socorro
     */
    public void msgSocorro(String m) {
        alarma();
        System.out.println("¡¡SOS!! " + m);
    }
}
