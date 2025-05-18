package crm.api;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import crm.payload.ResponeData;
import crm.service.KhoaHocService;

@WebServlet(name = "KhoaHocApi", urlPatterns = { "/api/KhoaHoc" })
public class KhoaHocApi extends HttpServlet {
	
	private KhoaHocService khoaHocService = new KhoaHocService();
	private Gson gson = new Gson();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int khoahoc_id = Integer.parseInt(req.getParameter("khoahoc_id"));
		
		boolean isSuccess = khoaHocService.deleteKhoaHocById(khoahoc_id);
		
		ResponeData responeData = new ResponeData();
		responeData.setSuccess(isSuccess);
		responeData.setDescription("");
		responeData.setData("");
		
		String json = gson.toJson(responeData);
		
		resp.setContentType("application/json");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter printWriter = resp.getWriter();
		printWriter.print(json);
		printWriter.flush();
		
	}
}
