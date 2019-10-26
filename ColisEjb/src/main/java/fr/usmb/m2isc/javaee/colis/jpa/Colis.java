package fr.usmb.m2isc.javaee.colis.jpa;

import fr.usmb.m2isc.javaee.colis.ColisState;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import java.io.Serializable;

@NamedQueries({
        @NamedQuery(name="allColis", query="SELECT c FROM Colis c")
})
@Entity
public class Colis implements Serializable {

    private static final long serialVersionUID = 1434153494900958184L;
    @Id
    private String identifiant;
    private double poids;
    private String origin;
    private String destination;

    private double latitude;
    private double longitude;
    private String emplacement;
    private ColisState state;

    public Colis() {
    }


    public Colis(String identifiant, double poids, String origin, String destination, double lat, double lng) {
        super();
        this.identifiant = identifiant;
        this.poids = poids;
        this.origin = origin;
        this.emplacement = origin;
        this.destination = destination;
        this.state = ColisState.REGISTERED;
        this.latitude = lat;
        this.longitude = lng;
    }

    public String getIdentifiant() {
        return identifiant;
    }

    public void setIdentifiant(String identifiant) {
        this.identifiant = identifiant;
    }

    public double getPoids() {
        return poids;
    }

    public void setPoids(double poids) {
        this.poids = poids;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public String getEmplacement() {
        return emplacement;
    }

    public void setEmplacement(String emplacement) {
        this.emplacement = emplacement;
    }

    public ColisState getState() {
        return state;
    }

    public void setState(ColisState state) {
        this.state = state;
    }
}
