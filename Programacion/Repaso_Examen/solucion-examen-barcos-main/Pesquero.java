
package barcos;

class Pesquero implements BarcoInterfaz {

    private int eslora;
    private int potencia;
    private int tripulacion;

    /**
     * Constructor al que solo le pasamos la tripulación
     * @param tri Numero de pescadores
     */
    public Pesquero(int tri) {
        tripulacion = tri;
        System.out.println("Se crea barco Pesquero con " + tripulacion + " pescadores");
    }

    /**
     * Método que muestra un mensaje con la alarma del barco
     */
    public void alarma() {
        System.out.println("¡Pescadores a sus puestos!");
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
