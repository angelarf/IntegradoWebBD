package model;

public class SubdominioBean {
  private String nomeSubdominio;
  private String termo;
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

    /**
     * @return the termo
     */
    public String getTermo() {
        return termo;
    }

    /**
     * @param termo the termo to set
     */
    public void setTermo(String termo) {
        this.termo = termo;
    }
}