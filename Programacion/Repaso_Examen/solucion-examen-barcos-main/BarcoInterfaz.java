package barcos;

interface BarcoInterfaz {
    //Los métodos de una interfaz son siempre públicos y abstractos
    void alarma();
    void msgSocorro(String av);
    
    //En relación al enunciado: "El método alarma muestra un mensaje indicando
    //desde qué tipo de barco se envía la alarma. 
    //Este método no podrá ser accedido desde fuera de la clase."
    //Al tratarse de un método de la interfaz, es público, y por tanto accesible
    //desde fuera de la clase.
   
}
