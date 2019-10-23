package modelos;

import java.util.ArrayList;

/**
 *
 * @author Caio Evangelista
 */
public class Produto {
    
    private String titulo;
    private String descricao;
    private String imagem;
    private String keyWords;
    private Categoria categoria;
    private float preco;
    private int qunatidade;

    public static ArrayList<Produto> lista = new ArrayList();

    public Produto(){}
    
    public Produto(String titulo){
        this.titulo = titulo;
    }
    
    public void vender(int qunatidade) {
       this.qunatidade -= qunatidade;
    }

    public void comprar(int qunatidade) {
       this.qunatidade += qunatidade;
    }
    
    public int getQunatidade() {
       return qunatidade;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getImagem() {
        return imagem;
    }

    public void setImagem(String imagem) {
        this.imagem = imagem;
    }

    public String getKeyWords() {
        return keyWords;
    }

    public void setKeyWords(String keyWords) {
        this.keyWords = keyWords;
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

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

}
