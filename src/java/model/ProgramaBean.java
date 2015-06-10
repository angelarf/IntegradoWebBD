package model;

public class ProgramaBean {
  private String nomePrograma;
  private Float gastoTotal;
  private String nomeDominio;

    public String getNomePrograma() {
        return nomePrograma;
    }

    public void setNomePrograma(String nomePrograma) {
        this.nomePrograma = nomePrograma;
    }

   
    public Float getGastoTotal() {
        return gastoTotal;
    }

   
    public void setGastoTotal(Float gastoTotal) {
        this.gastoTotal = gastoTotal;
    }

    /**
     * @return the nomeDominio
     */
    public String getNomeDominio() {
        return nomeDominio;
    }

    /**
     * @param nomeDominio the nomeDominio to set
     */
    public void setNomeDominio(String nomeDominio) {
        this.nomeDominio = nomeDominio;
    }
 
}