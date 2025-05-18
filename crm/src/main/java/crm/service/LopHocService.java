package crm.service;

import java.util.List;

import crm.model.LopHoc;
import crm.repository.LopHocRepository;

public class LopHocService {
	private LopHocRepository lopHocRepository = new LopHocRepository();

	public List<LopHoc> getLopHocs() {
		return lopHocRepository.getLopHocs();
	}
	
	public boolean deleteLopHocById(int lophoc_id) {
		return lopHocRepository.deleteLopHocById(lophoc_id) > 0 ? true : false;
	}
}
