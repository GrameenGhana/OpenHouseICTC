/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.grameenfoundation.ictcgame.entities;

import com.grameenfoundation.ictcgame.models.BaseEntity;
import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import org.hibernate.annotations.GenericGenerator;

/**
 *
 * @author Joseph George Davis
 * @date Jun 17, 2015 9:40:31 AM
 * description:
 */
@Entity
@Table(name = "player")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Player.findAll", query = "SELECT p FROM Player p"),
    @NamedQuery(name = "Player.findByPlayerid", query = "SELECT p FROM Player p WHERE p.playerid = :playerid"),
    @NamedQuery(name = "Player.findByStage1Agro", query = "SELECT p FROM Player p WHERE p.stage1Agro = :stage1Agro"),
    @NamedQuery(name = "Player.findByStage1Life", query = "SELECT p FROM Player p WHERE p.stage1Life = :stage1Life"),
    @NamedQuery(name = "Player.findByStage1Loan", query = "SELECT p FROM Player p WHERE p.stage1Loan = :stage1Loan"),
    @NamedQuery(name = "Player.findByStage2Agro", query = "SELECT p FROM Player p WHERE p.stage2Agro = :stage2Agro"),
    @NamedQuery(name = "Player.findByStage2Life", query = "SELECT p FROM Player p WHERE p.stage2Life = :stage2Life"),
    @NamedQuery(name = "Player.findByStage2Loan", query = "SELECT p FROM Player p WHERE p.stage2Loan = :stage2Loan"),
    @NamedQuery(name = "Player.findByStage3Agro", query = "SELECT p FROM Player p WHERE p.stage3Agro = :stage3Agro"),
    @NamedQuery(name = "Player.findByStage3Life", query = "SELECT p FROM Player p WHERE p.stage3Life = :stage3Life"),
    @NamedQuery(name = "Player.findByStage3Loan", query = "SELECT p FROM Player p WHERE p.stage3Loan = :stage3Loan"),
    @NamedQuery(name = "Player.findByStage4Agro", query = "SELECT p FROM Player p WHERE p.stage4Agro = :stage4Agro"),
    @NamedQuery(name = "Player.findByStage4Life", query = "SELECT p FROM Player p WHERE p.stage4Life = :stage4Life"),
    @NamedQuery(name = "Player.findByStage4Loan", query = "SELECT p FROM Player p WHERE p.stage4Loan = :stage4Loan"),
    @NamedQuery(name = "Player.findByStage5Agro", query = "SELECT p FROM Player p WHERE p.stage5Agro = :stage5Agro"),
    @NamedQuery(name = "Player.findByStage5Life", query = "SELECT p FROM Player p WHERE p.stage5Life = :stage5Life"),
    @NamedQuery(name = "Player.findByRevenue", query = "SELECT p FROM Player p WHERE p.revenue = :revenue"),
    @NamedQuery(name = "Player.findByAmountSpent", query = "SELECT p FROM Player p WHERE p.amountSpent = :amountSpent"),
    @NamedQuery(name = "Player.findByStage5Loan", query = "SELECT p FROM Player p WHERE p.stage5Loan = :stage5Loan"),
    @NamedQuery(name = "Player.findByUsercode", query = "SELECT p FROM Player p WHERE p.usercode = :usercode")})
public class Player extends BaseEntity implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
   // @GeneratedValue(strategy = GenerationType.IDENTITY)
    @GenericGenerator(name="gen",strategy="increment")
    @GeneratedValue(generator="gen")
    @Basic(optional = false)
    @Column(name = "playerid",unique = true, nullable = false, precision = 15, scale = 0)
    //@Basic(optional = false)
    //@Column(name = "playerid")
    private Integer playerid;
    @Size(max = 45)
    @Column(name = "stage1_agro")
    private String stage1Agro;
    @Size(max = 45)
    @Column(name = "stage1_life")
    private String stage1Life;
    @Size(max = 45)
    @Column(name = "stage1_loan")
    private String stage1Loan;
    @Size(max = 45)
    @Column(name = "stage2_agro")
    private String stage2Agro;
    @Size(max = 45)
    @Column(name = "stage2_life")
    private String stage2Life;
    @Size(max = 45)
    @Column(name = "stage2_loan")
    private String stage2Loan;
    @Size(max = 45)
    @Column(name = "stage3_agro")
    private String stage3Agro;
    @Size(max = 45)
    @Column(name = "stage3_life")
    private String stage3Life;
    @Size(max = 45)
    @Column(name = "stage3_loan")
    private String stage3Loan;
    @Size(max = 45)
    @Column(name = "stage4_agro")
    private String stage4Agro;
    @Size(max = 45)
    @Column(name = "stage4_life")
    private String stage4Life;
    @Size(max = 45)
    @Column(name = "stage4_loan")
    private String stage4Loan;
    @Size(max = 45)
    @Column(name = "stage5_agro")
    private String stage5Agro;
    @Size(max = 45)
    @Column(name = "stage5_life")
    private String stage5Life;
    @Size(max = 45)
    @Column(name = "revenue")
    private String revenue;
    @Size(max = 45)
    @Column(name = "amount_spent")
    private String amountSpent;
    @Size(max = 45)
    @Column(name = "stage5_loan")
    private String stage5Loan;
    @Size(max = 45)
    @Column(name = "usercode")
    private String usercode;

    public Player() {
    }

    public Player(Integer playerid) {
        this.playerid = playerid;
    }

    public Integer getPlayerid() {
        return playerid;
    }

    public void setPlayerid(Integer playerid) {
        this.playerid = playerid;
    }

    public String getStage1Agro() {
        return stage1Agro;
    }

    public void setStage1Agro(String stage1Agro) {
        this.stage1Agro = stage1Agro;
    }

    public String getStage1Life() {
        return stage1Life;
    }

    public void setStage1Life(String stage1Life) {
        this.stage1Life = stage1Life;
    }

    public String getStage1Loan() {
        return stage1Loan;
    }

    public void setStage1Loan(String stage1Loan) {
        this.stage1Loan = stage1Loan;
    }

    public String getStage2Agro() {
        return stage2Agro;
    }

    public void setStage2Agro(String stage2Agro) {
        this.stage2Agro = stage2Agro;
    }

    public String getStage2Life() {
        return stage2Life;
    }

    public void setStage2Life(String stage2Life) {
        this.stage2Life = stage2Life;
    }

    public String getStage2Loan() {
        return stage2Loan;
    }

    public void setStage2Loan(String stage2Loan) {
        this.stage2Loan = stage2Loan;
    }

    public String getStage3Agro() {
        return stage3Agro;
    }

    public void setStage3Agro(String stage3Agro) {
        this.stage3Agro = stage3Agro;
    }

    public String getStage3Life() {
        return stage3Life;
    }

    public void setStage3Life(String stage3Life) {
        this.stage3Life = stage3Life;
    }

    public String getStage3Loan() {
        return stage3Loan;
    }

    public void setStage3Loan(String stage3Loan) {
        this.stage3Loan = stage3Loan;
    }

    public String getStage4Agro() {
        return stage4Agro;
    }

    public void setStage4Agro(String stage4Agro) {
        this.stage4Agro = stage4Agro;
    }

    public String getStage4Life() {
        return stage4Life;
    }

    public void setStage4Life(String stage4Life) {
        this.stage4Life = stage4Life;
    }

    public String getStage4Loan() {
        return stage4Loan;
    }

    public void setStage4Loan(String stage4Loan) {
        this.stage4Loan = stage4Loan;
    }

    public String getStage5Agro() {
        return stage5Agro;
    }

    public void setStage5Agro(String stage5Agro) {
        this.stage5Agro = stage5Agro;
    }

    public String getStage5Life() {
        return stage5Life;
    }

    public void setStage5Life(String stage5Life) {
        this.stage5Life = stage5Life;
    }

    public String getRevenue() {
        return revenue;
    }

    public void setRevenue(String revenue) {
        this.revenue = revenue;
    }

    public String getAmountSpent() {
        return amountSpent;
    }

    public void setAmountSpent(String amountSpent) {
        this.amountSpent = amountSpent;
    }

    public String getStage5Loan() {
        return stage5Loan;
    }

    public void setStage5Loan(String stage5Loan) {
        this.stage5Loan = stage5Loan;
    }

    public String getUsercode() {
        return usercode;
    }

    public void setUsercode(String usercode) {
        this.usercode = usercode;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (playerid != null ? playerid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Player)) {
            return false;
        }
        Player other = (Player) object;
        if ((this.playerid == null && other.playerid != null) || (this.playerid != null && !this.playerid.equals(other.playerid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.grameenfoundation.ictcgame.entities.Player[ playerid=" + playerid + " ]";
    }

}
