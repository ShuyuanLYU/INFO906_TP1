package fr.usmb.m2isc.javaee.colis.ejb;

import java.util.List;

import fr.usmb.m2isc.javaee.colis.ColisState;
import fr.usmb.m2isc.javaee.colis.jpa.Colis;

public interface Operation {

	Colis getColis(String identifiant);

	List<Colis> findAllColis();

	Colis registerColis(String identifiant, double poids, String origin, String destination, double lat, double lng);

	Colis editColis(String identifiant, double latitude, double longitude, String emplacement, ColisState state);
}