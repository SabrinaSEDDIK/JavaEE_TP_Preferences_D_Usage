package fr.eni.tppreferencesdusage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletPreferencesDUsage
 */
@WebServlet("/ServletPreferencesDUsage")

public class ServletPreferencesDUsage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Integer nbFois = 0;
	private List<String> listeCouleurs;
	
	
	@Override
	public void init() throws ServletException {
		super.init();
		listeCouleurs = new ArrayList<>();
		listeCouleurs.add("bleu");
		listeCouleurs.add("rouge");
		listeCouleurs.add("vert");
		listeCouleurs.add("noir");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//stocker dans le CONTEXTE D'APPLICATION (=tous les users)
		ServletContext application = this.getServletContext();
		application.setAttribute("listeCouleurs", listeCouleurs);
		Cookie[] cookies = request.getCookies();
		//stocker dans ou utiliser COOKIE (= un user, stockage côté client)
		boolean cookieNombrevisites = false;
		
		if(cookies!=null) {
			for(Cookie unCookie:cookies)
			{
				if(unCookie.getName().equalsIgnoreCase("nombreVisites")) {
					cookieNombrevisites = true;
					unCookie.setValue(String.valueOf(Integer.parseInt(unCookie.getValue())+1));
					unCookie.setMaxAge(10);
					System.out.println(unCookie.getMaxAge());
					request.setAttribute("nbFois", unCookie.getValue());
					response.addCookie(unCookie);
					break;
				}
			}
		}
		if (cookieNombrevisites==false) {
			//créer un nouveau cookie
			Cookie cookie = new Cookie("nombreVisites", String.valueOf(nbFois+1));
			cookie.setMaxAge(10); //120 secondes
			request.setAttribute("nbFois", cookie.getValue());
			response.addCookie(cookie);
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/accueilPreferences.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//stocker dans SESSION (= un user, stockage côté serveur, temps de vie du navigateur)
		String couleur = request.getParameter("couleur");
		HttpSession session = request.getSession();
		session.setAttribute("couleur", couleur);
		doGet(request,response);
	}

}
