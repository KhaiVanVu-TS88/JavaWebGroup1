package crm.service;

import java.util.List;

import crm.model.KhoaHoc;
import crm.repository.KhoaHocRepository;

public class KhoaHocService {
	private KhoaHocRepository khoaHocRepository = new KhoaHocRepository();

	public List<KhoaHoc> getKhoaHocs() {
		return khoaHocRepository.getKhoaHocs();
	}
	
	public boolean deleteKhoaHocById(int khoahoc_id) {
		return khoaHocRepository.deleteKhoaHocById(khoahoc_id) > 0 ? true : false;
	}
}
