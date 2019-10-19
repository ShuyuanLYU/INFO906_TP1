package fr.usmb.m2isc.javaee.colis.web;

import fr.usmb.m2isc.javaee.colis.ejb.Operation;
import fr.usmb.m2isc.javaee.colis.jpa.Colis;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet utilisee pour afficher un colis.
 */
@WebServlet("/DisplayColisServlet")
public class DisplayColisServlet extends HttpServlet {

    private static final long serialVersionUID = -6532678365972351854L;
    @EJB
    private Operation ejb;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayColisServlet() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String num = request.getParameter("identifiant");

        Colis colis = ejb.getColis(num);

        request.setAttribute("colis", colis);

        request.getRequestDispatcher("/DisplayColis.jsp").forward(request, response);
    }
}
