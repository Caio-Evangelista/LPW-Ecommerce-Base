package modelos;

import java.util.ArrayList;
import java.util.Date;

/**
 * @author Desenvolvimento
 */
public class Usuarios {
    
    //Dados Pessoais
   private String nome;
   private String sobrenome;
   private String cpf;
   private Date dataNas;
   private boolean isHomem;
   private String telefone;
   //Acesso ao site
   private String email;
   private String login;
   private String senha;
   //Endereco
   private String CEP;
   private String rua;
   private String numero;
   private String complemnto;
   private String bairro;
   private String cidade;
   private String uf;

   public static ArrayList<Usuarios> lista = new ArrayList();

   public Usuarios(){
   }
   public Usuarios(String nome, String email, String nickName, String senha){
      this.nome = nome;
      this.email = email;
      this.login = nickName;
      this.senha = senha;
   }

   public static boolean isLogin(String email, String senha){
      for(Usuarios user : lista)
         if((email.equals(user.email) || email.equals(user.login)) && senha.equals(user.senha))
            return true;
      return false;
   }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public Date getDataNas() {
        return dataNas;
    }

    public void setDataNas(Date dataNas) {
        this.dataNas = dataNas;
    }

    public boolean isIsHomem() {
        return isHomem;
    }

    public void setIsHomem(boolean isHomem) {
        this.isHomem = isHomem;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getCEP() {
        return CEP;
    }

    public void setCEP(String CEP) {
        this.CEP = CEP;
    }

    public String getRua() {
        return rua;
    }

    public void setRua(String rua) {
        this.rua = rua;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getComplemnto() {
        return complemnto;
    }

    public void setComplemnto(String complemnto) {
        this.complemnto = complemnto;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getUf() {
        return uf;
    }

    public void setUf(String uf) {
        this.uf = uf;
    }
   
   

   public ArrayList<Usuarios> getLista() {
      return lista;
   }

   public void setLista(ArrayList<Usuarios> lista) {
      Usuarios.lista = lista;
   }

}
