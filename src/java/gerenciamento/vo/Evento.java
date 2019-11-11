package gerenciamento.vo;
// Generated 25/10/2019 16:53:41 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Evento generated by hbm2java
 */
public class Evento  implements java.io.Serializable {


     private Integer idEvento;
     private Usuario usuario;
     private String tipoEvento;
     private String proprietario;
     private String dataEvento;
     private Set convidadoses = new HashSet(0);

    public Evento() {
    }

	
    public Evento(Usuario usuario) {
        this.usuario = usuario;
    }
    public Evento(Integer idEvento) {
        this.idEvento = idEvento;
    }

    public Evento(Integer idEvento, String tipoEvento, String proprietario, String dataEvento) {
        this.idEvento = idEvento;
        this.tipoEvento = tipoEvento;
        this.proprietario = proprietario;
        this.dataEvento = dataEvento;
    }
    
    public Evento(Usuario usuario, Integer idEvento, String tipoEvento, String proprietario, String dataEvento) {
        this.usuario = usuario;
        this.idEvento = idEvento;
        this.tipoEvento = tipoEvento;
        this.proprietario = proprietario;
        this.dataEvento = dataEvento;
    }
    
    public Evento(Usuario usuario, String tipoEvento, String proprietario, String dataEvento, Set convidadoses) {
       this.usuario = usuario;
       this.tipoEvento = tipoEvento;
       this.proprietario = proprietario;
       this.dataEvento = dataEvento;
       this.convidadoses = convidadoses;
    }
    
    public Evento(Usuario usuario, String tipoEvento, String proprietario, String dataEvento) {
       this.usuario = usuario;
       this.tipoEvento = tipoEvento;
       this.proprietario = proprietario;
       this.dataEvento = dataEvento;
    }
   
    public Integer getIdEvento() {
        return this.idEvento;
    }
    
    public void setIdEvento(Integer idEvento) {
        this.idEvento = idEvento;
    }
    public Usuario getUsuario() {
        return this.usuario;
    }
    
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    public String getTipoEvento() {
        return this.tipoEvento;
    }
    
    public void setTipoEvento(String tipoEvento) {
        this.tipoEvento = tipoEvento;
    }
    public String getProprietario() {
        return this.proprietario;
    }
    
    public void setProprietario(String proprietario) {
        this.proprietario = proprietario;
    }
    public String getDataEvento() {
        return this.dataEvento;
    }
    
    public void setDataEvento(String dataEvento) {
        this.dataEvento = dataEvento;
    }
    public Set getConvidadoses() {
        return this.convidadoses;
    }
    
    public void setConvidadoses(Set convidadoses) {
        this.convidadoses = convidadoses;
    }




}


