/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.grameenfoundation.ictcgame.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Joseph George Davis
 * @date Jun 17, 2015 3:19:41 PM
 * description:
 */
@Entity
@Table(name = "life_choices")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "LifeChoices.findAll", query = "SELECT l FROM LifeChoices l"),
    @NamedQuery(name = "LifeChoices.findByIdlifeChoices", query = "SELECT l FROM LifeChoices l WHERE l.idlifeChoices = :idlifeChoices"),
    @NamedQuery(name = "LifeChoices.findByChoice", query = "SELECT l FROM LifeChoices l WHERE l.choice = :choice"),
    @NamedQuery(name = "LifeChoices.findByValue", query = "SELECT l FROM LifeChoices l WHERE l.value = :value")})
public class LifeChoices implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idlife_choices")
    private Integer idlifeChoices;
    @Size(max = 45)
    @Column(name = "choice")
    private String choice;
    @Size(max = 45)
    @Column(name = "value")
    private String value;

    public LifeChoices() {
    }

    public LifeChoices(Integer idlifeChoices) {
        this.idlifeChoices = idlifeChoices;
    }

    public Integer getIdlifeChoices() {
        return idlifeChoices;
    }

    public void setIdlifeChoices(Integer idlifeChoices) {
        this.idlifeChoices = idlifeChoices;
    }

    public String getChoice() {
        return choice;
    }

    public void setChoice(String choice) {
        this.choice = choice;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idlifeChoices != null ? idlifeChoices.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof LifeChoices)) {
            return false;
        }
        LifeChoices other = (LifeChoices) object;
        if ((this.idlifeChoices == null && other.idlifeChoices != null) || (this.idlifeChoices != null && !this.idlifeChoices.equals(other.idlifeChoices))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.grameenfoundation.ictcgame.entities.LifeChoices[ idlifeChoices=" + idlifeChoices + " ]";
    }

}
