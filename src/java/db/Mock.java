package db;

import java.util.ArrayList;
import modelos.Produto;

/**
 *
 * @author Caio Evangelista
 */
public class Mock {
   private static ArrayList<Produto> lista;

   public static void makeMock(){

      if(lista == null){
         lista = Produto.getLista();

         Produto arduino = new Produto("Arduino Uno", 50, false);
         lista.add(arduino);
         Produto rasp = new Produto("RaspBerry pi 3 B+", 150, true);
         lista.add(rasp);
         Produto sensCor = new Produto("Sensor de Cor", 7.80f, false);
         lista.add(sensCor);
         Produto sensRef = new Produto("Sensor de Refletancia TCRT 5000", 0.60f, false);
         lista.add(sensRef);
         Produto sensRef1 = new Produto("Modolo QTR - Sensor de Refletancia", 1.10f, false);
         lista.add(sensRef1);
         Produto resistor = new Produto("Kit Resistore - 500 unidades", 15, true);
         lista.add(resistor);
         Produto camera = new Produto("Camera para Arduino", 24, true);
         lista.add(camera);
      }

   }

}
