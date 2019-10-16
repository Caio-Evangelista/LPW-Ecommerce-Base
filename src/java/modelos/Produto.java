package modelos;

import java.util.ArrayList;

/**
 *
 * @author Caio Evangelista
 */
public class Produto {
   private int id;
   private String descricao;
   private float preco;
   private int qunatidade;
   private boolean oferta;
   public static ArrayList<Produto> lista = new ArrayList();

   public Produto(){}
   public Produto(String descricao){
     this.descricao = descricao;
   }
   public Produto(String descricao, float preco){
     this.descricao = descricao;
     this.preco = preco;
   }
   public Produto(String descricao, float preco, boolean oferta){
     this.descricao = descricao;
     this.preco = preco;
     this.oferta = oferta;
   }


   public void vender(int qunatidade) {
      this.qunatidade -= qunatidade;
   }

   public void comprar(int qunatidade) {
      this.qunatidade += qunatidade;
   }

   public int getId() {
      return id;
   }

   public void setId(int id) {
      this.id = id;
   }

   public int getQunatidade() {
      return qunatidade;
   }

   public String getDescricao(){
        return this.descricao;
    }

   public void setDescricao(String descricao){
        this.descricao = descricao;
    }

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }

    public ArrayList<Produto> getLista() {
        return lista;
    }

    public void setLista(ArrayList<Produto> lista) {
        Produto.lista = lista;
    }

    public boolean isOferta() {
        return oferta;
    }

    public void setOferta(boolean oferta) {
        this.oferta = oferta;
    }

   @Override
   public String toString() {
      return "Produto{" + ", descricao=" + descricao + ", preco=" + preco + ", qunatidade=" + qunatidade + ", oferta=" + oferta + '}';
   }

}
