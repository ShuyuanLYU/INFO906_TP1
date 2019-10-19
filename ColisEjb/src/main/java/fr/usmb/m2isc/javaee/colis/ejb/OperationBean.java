package fr.usmb.m2isc.javaee.colis.ejb;

import java.util.List;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import fr.usmb.m2isc.javaee.colis.ColisState;
import fr.usmb.m2isc.javaee.colis.jpa.Colis;

@Stateless
@Remote
public class OperationBean implements Operation {

    @PersistenceContext
    private EntityManager em;

    public OperationBean() {
    }

    @Override
    public Colis getColis(String identifiant) {
        return em.find(Colis.class, identifiant);
    }

    @Override
    public List<Colis> findAllColis() {
        Query req = em.createNamedQuery("allColis");
        return req.getResultList();
    }

    @Override
    public Colis registerColis(String identifiant, double poids, String origin, String destination, double lat, double lng) {
        Colis colis = new Colis(identifiant, poids, origin, destination, lat, lng);
        em.persist(colis);
        return colis;
    }

    @Override
    public Colis editColis(String identifiant, double latitude, double longitude, String emplacement, ColisState state) {
        Colis colis = em.find(Colis.class, identifiant);
        colis.setLatitude(latitude);
        colis.setEmplacement(emplacement);
        colis.setLongitude(longitude);
        colis.setState(state);
        return colis;
    }
}
