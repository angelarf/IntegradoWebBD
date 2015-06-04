package model;

public class SubdominioBean {
  private String nomeSubdominio;
  private Float gastoTotal;   
  
 /* public SubdominioBean(){
    type = "regular";
  }   */
  public String getName() {
    return this.nomeSubdominio;
  }
  public void setName(String name) {
    this.nomeSubdominio = name;
  }
  public Float getGastoTotal() {
    return this.gastoTotal;
  }
  public void setGastoTotal(Float valor) {
    this.gastoTotal = valor;
  }  /*
  public void setType(Float valor) {
    this.gastoTotal = valor;
  }*/
}