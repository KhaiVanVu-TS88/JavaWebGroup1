package crm.repository;

import java.util.List;

import crm.model.LopHoc;

public interface LopHocInterface {
	List<LopHoc> getLopHocs();
	int deleteLopHocById(int lophoc_id);
}
