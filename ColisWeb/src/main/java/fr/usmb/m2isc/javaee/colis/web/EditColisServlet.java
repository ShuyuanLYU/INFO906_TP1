package fr.usmb.m2isc.javaee.colis.web;


import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.usmb.m2isc.javaee.colis.ColisState;
import fr.usmb.m2isc.javaee.colis.ejb.Operation;
import fr.usmb.m2isc.javaee.colis.jpa.Colis;

/**
 * Servlet utilisee pour change la position et l'état d'un colis.
 */
@WebServlet("/EditColisServlet")
public class EditColisServlet extends HttpServlet{

    private static final long serialVersionUID = -4831125265668339656L;
    @EJB
    private Operation op;


    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditColisServlet() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String identifiant = request.getParameter("identifiant");
        String latitudeParameter = request.getParameter("lat");
        String longitudeParameter= request.getParameter("lng");
        String emplacement = request.getParameter("emplacement");
        String stateParameter = request.getParameter("etat");

        double longitude = Double.parseDouble(longitudeParameter);
        double latatitude = Double.parseDouble(latitudeParameter);

        Colis colis = op.getColis(identifiant);



        if(colis != null){
            colis = op.editColis(identifiant,latatitude,longitude,emplacement, ColisState.valueOf(stateParameter));
            request.setAttribute("colis", colis);
            request.getRequestDispatcher("/DisplayColis.jsp").forward(request, response);
        }
        else{
            System.out.println("Colis existe pas !!");
            request.setAttribute("error", "L'identifiant de colis que vous avez saisez n'est pas correct !");
            request.getRequestDispatcher("/Error.jsp").forward(request, response);
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

