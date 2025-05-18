package crm.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import crm.model.KhoaHoc;
import crm.model.LopHoc;
import crm.service.KhoaHocService;
import crm.service.LopHocService;

@WebServlet(urlPatterns = { "/KhoaHoc" })
public class KhoaHocServlet extends HttpServlet {

	private KhoaHocService khoaHocService = new KhoaHocService();
	private LopHocService lopHocService = new LopHocService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		List<KhoaHoc> listKhoaHoc = khoaHocService.getKhoaHocs();
	    System.out.println("Danh sách khóa học: " + listKhoaHoc); // In log để kiểm tra
	    req.setAttribute("KhoaHoc", listKhoaHoc);
	    
	    List<LopHoc> listLopHoc = lopHocService.getLopHocs();
	    System.out.println("Danh sách lớp học: " + listLopHoc); // In log để kiểm tra
	    req.setAttribute("LopHoc", listLopHoc);
		
		req.getRequestDispatcher("/dist/projects.jsp").forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

	}

}
