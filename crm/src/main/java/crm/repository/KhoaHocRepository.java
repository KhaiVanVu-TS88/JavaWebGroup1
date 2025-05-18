package crm.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import crm.config.MySqlConnection;
import crm.model.KhoaHoc;

public class KhoaHocRepository implements KhoaHocInterface{
	public List<KhoaHoc> getKhoaHocs() {
	    List<KhoaHoc> list = new ArrayList<KhoaHoc>();
	    String query = "SELECT * FROM english_courses_online.khoahoc";

	    try (Connection connection = MySqlConnection.getConnection();
	         PreparedStatement preparedStatement = connection.prepareStatement(query);
	         ResultSet resultSet = preparedStatement.executeQuery()) {

	        while (resultSet.next()) {
	            KhoaHoc khoaHoc = new KhoaHoc();
	            khoaHoc.setKhoahoc_id(resultSet.getInt("khoahoc_id"));
	            khoaHoc.setKhoahoc_ten(resultSet.getString("khoahoc_ten"));
	            khoaHoc.setKhoahoc_mota(resultSet.getString("khoahoc_mota"));
	            khoaHoc.setKhoahoc_thumbnail(resultSet.getString("khoahoc_thumbnail"));
	            khoaHoc.setKhoahoc_trinhdo(resultSet.getString("khoahoc_trinhdo"));
	            khoaHoc.setKhoahoc_loai(resultSet.getString("khoahoc_loai"));
	            khoaHoc.setKhoahoc_trangthai(resultSet.getString("khoahoc_trangthai"));
	            khoaHoc.setKhoahoc_ngaybatdau(resultSet.getString("khoahoc_ngaybatdau"));
	            khoaHoc.setKhoahoc_ngayketthuc(resultSet.getString("khoahoc_ngayketthuc"));
	            khoaHoc.setKhoahoc_thoiluong(resultSet.getInt("khoahoc_thoiluong"));
	            khoaHoc.setKhoahoc_gia(resultSet.getInt("khoahoc_gia"));
	            khoaHoc.setKhoahoc_discount(resultSet.getInt("khoahoc_discount"));
	            khoaHoc.setKhoahoc_created_at(resultSet.getString("khoahoc_created_at"));
	            khoaHoc.setKhoahoc_updated_at(resultSet.getString("khoahoc_updated_at"));

	            list.add(khoaHoc);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return list;
	}

	public int deleteKhoaHocById(int khoahoc_id) {
	    String query = "DELETE FROM english_courses_online.khoahoc WHERE khoahoc_id = ?";
	    int isDelete = 0;

	    try (Connection connection = MySqlConnection.getConnection();
	         PreparedStatement preparedStatement = connection.prepareStatement(query)) {
	        preparedStatement.setInt(1, khoahoc_id);
	        isDelete = preparedStatement.executeUpdate();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return isDelete;
	}
}
