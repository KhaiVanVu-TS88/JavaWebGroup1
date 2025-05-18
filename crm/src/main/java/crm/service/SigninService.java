package crm.service;

import java.util.List;

import crm.model.NguoiDung;
import crm.repository.NguoiDungRepository;

public class SigninService {
	
	private NguoiDungRepository nguoiDungRepository = new NguoiDungRepository();
	
	public boolean checkSignin(String nguoiDung_email, String nguoiDung_MatKhau) {
		List<NguoiDung> list = nguoiDungRepository.getNguoiDungByNguoiDung_emailAndNguoiDung_MatKhau(nguoiDung_email, 
				nguoiDung_MatKhau);
		
		return list.size() > 0 ? true : false;
	}
}
