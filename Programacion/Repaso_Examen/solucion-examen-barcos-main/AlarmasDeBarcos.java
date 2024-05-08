package barcos;

public class AlarmasDeBarcos
{
    /**
     * Método principal
     * @param ar Argumentos
     */
   public static void main(String [] ar)
   {
       BarcoPasaje bp = new BarcoPasaje(111);
       Pesquero p = new Pesquero(222);
       PortaAviones pa = new PortaAviones(333);
       p.alarma();
       bp.msgSocorro("Ay, madre");
       p.msgSocorro("Qué miedo");
       pa.msgSocorro("¡Nos hundimos!");
   }
}
