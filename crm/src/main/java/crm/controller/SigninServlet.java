package crm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import crm.service.SigninService;

@WebServlet(name = "SignIn", urlPatterns = { "/signin" })
public class SigninServlet extends HttpServlet {

	private SigninService signinService = new SigninService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("chay doGet");
		req.getRequestDispatcher("dist/ui-elements/auth-signin.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("chay doPost");
		
		req.setCharacterEncoding("UTF-8");
		
		String nguoidung_email = req.getParameter("email");
		//System.out.println("email: "+nguoidung_email);
		
		String nguoidung_matkhau = req.getParameter("password");
		//System.out.println("password: "+nguoidung_matkhau);
		
		boolean isSignin = signinService.checkSignin(nguoidung_email, nguoidung_matkhau);

		System.out.println(isSignin);
		if(isSignin) resp.sendRedirect(req.getContextPath()+"/Dashboard");
		//req.getRequestDispatcher("dist/ui-elements/auth-signin.jsp").forward(req, resp);
	}
}
