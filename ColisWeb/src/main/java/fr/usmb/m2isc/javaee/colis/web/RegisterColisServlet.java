package fr.usmb.m2isc.javaee.colis.web;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.usmb.m2isc.javaee.colis.ejb.Operation;
import fr.usmb.m2isc.javaee.colis.jpa.Colis;

/**
 * Servlet utilisee pour enregister un colis.
 */
@WebServlet("/RegisterColisServlet")
public class RegisterColisServlet extends HttpServlet {

    private static final long serialVersionUID = 5236668439173484090L;
    @EJB
    private Operation op;


    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterColisServlet() {
        super();
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String identifiant = request.getParameter("identifiant");
        double poids = Double.parseDouble(request.getParameter("poids"));
        String origin = request.getParameter("origin");
        double latitude = Double.parseDouble(request.getParameter("lat"));
        double longitude = Double.parseDouble(request.getParameter("lng"));
        String destination = request.getParameter("destination");

        Colis colis = op.registerColis(identifiant, poids, origin, destination, latitude, longitude);

        request.setAttribute("colis", colis);

        request.getRequestDispatcher("/DisplayColis.jsp").forward(request, response);

    }
}
