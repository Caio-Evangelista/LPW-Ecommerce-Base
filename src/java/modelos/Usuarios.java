package modelos;

import java.util.ArrayList;
import java.util.Date;

/**
 * @author Desenvolvimento
 */
public class Usuarios {

   private String nome;
   private String nickName;
   private String endereco;
   private String telefone;
   private Date dataNas;
   private String cpf;
   private String email;
   private String senha;

   private static ArrayList<Usuarios> lista = new ArrayList();

   public Usuarios(){
   }
   public Usuarios(String nome, String email, String nickName, String senha){
      this.nome = nome;
      this.email = email;
      this.nickName = nickName;
      this.senha = senha;
   }

   public static boolean isLogin(String email, String senha){
      for(Usuarios user : lista)
         if((email.equals(user.email) || email.equals(user.nickName)) && senha.equals(user.senha))
            return true;
      return false;
   }

   public String getNome() {
      return nome;
   }

   public void setNome(String nome) {
      this.nome = nome;
   }

   public String getNickName() {
      return nickName;
   }

   public void setNickName(String nickName) {
      this.nickName = nickName;
   }

   public String getEndereco() {
      return endereco;
   }

   public void setEndereco(String endereco) {
      this.endereco = endereco;
   }

   public String getTelefone() {
      return telefone;
   }

   public void setTelefone(String telefone) {
      this.telefone = telefone;
   }

   public Date getDataNas() {
      return dataNas;
   }

   public void setDataNas(Date dataNas) {
      this.dataNas = dataNas;
   }

   public String getCpf() {
      return cpf;
   }

   public void setCpf(String cpf) {
      this.cpf = cpf;
   }

   public String getEmail() {
      return email;
   }

   public void setEmail(String email) {
      this.email = email;
   }

   public String getSenha() {
      return senha;
   }

   public void setSenha(String senha) {
      this.senha = senha;
   }

   public static ArrayList<Usuarios> getLista() {
      return lista;
   }

   public static void setLista(ArrayList<Usuarios> lista) {
      Usuarios.lista = lista;
   }




}
