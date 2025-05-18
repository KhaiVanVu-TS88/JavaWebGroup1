package crm.repository;

import java.sql.SQLException;
import java.util.List;

import crm.model.KhoaHoc;

public interface KhoaHocInterface {
	List<KhoaHoc> getKhoaHocs();
	int deleteKhoaHocById(int khoahoc_id);
}
