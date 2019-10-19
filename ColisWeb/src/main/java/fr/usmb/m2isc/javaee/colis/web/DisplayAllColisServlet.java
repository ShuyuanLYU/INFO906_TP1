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
import java.util.List;

/**
 * Servlet utilisé pour afficher tous les colis.
 */
@WebServlet("/DisplayAllColisServlet")
public class DisplayAllColisServlet extends HttpServlet {

    private static final long serialVersionUID = -8627686923668875954L;
    @EJB
    private Operation ejb;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayAllColisServlet() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Colis> colis = ejb.findAllColis();

        request.setAttribute("listColis", colis);

        request.getRequestDispatcher("/DisplayAllColis.jsp").forward(request, response);
    }
}
