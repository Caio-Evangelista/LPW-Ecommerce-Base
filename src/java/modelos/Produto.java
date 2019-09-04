package modelos;

import java.util.ArrayList;

/**
 *
 * @author Caio Evangelista
 */
public class Produto {
   private String nome;
    private String descricao;
    private float preco;
    private int qunatidade;
    private boolean oferta;
    private static ArrayList<Produto> lista = new ArrayList();


   public void vender(int qunatidade) {
      this.qunatidade -= qunatidade;
   }

   public void comprar(int qunatidade) {
      this.qunatidade += qunatidade;
   }

   public int getQunatidade() {
      return qunatidade;
   }

   public String getNome() {
      return nome;
   }

   public void setNome(String nome) {
      this.nome = nome;
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

    public static ArrayList<Produto> getLista() {
        return lista;
    }

    public static void setLista(ArrayList<Produto> lista) {
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
      return "Produto{" + "nome=" + nome + ", descricao=" + descricao + ", preco=" + preco + ", qunatidade=" + qunatidade + ", oferta=" + oferta + '}';
   }

}
