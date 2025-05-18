package crm.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import crm.config.MySqlConnection;
import crm.model.LopHoc;

public class LopHocRepository implements LopHocInterface {
    private static final Logger logger = LoggerFactory.getLogger(LopHocRepository.class);

    @Override
    public List<LopHoc> getLopHocs() {
        List<LopHoc> list = new ArrayList<>();
        String query = "SELECT * FROM english_courses_online.lophoc";

        try (Connection connection = MySqlConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {

            while (resultSet.next()) {
                LopHoc lopHoc = new LopHoc();
                lopHoc.setLophoc_id(resultSet.getInt("lophoc_id"));
                lopHoc.setLophoc_khoahoc_id(resultSet.getInt("lophoc_khoahoc_id"));
                lopHoc.setLophoc_ten(resultSet.getString("lophoc_ten"));
                lopHoc.setLophoc_mota(resultSet.getString("lophoc_mota"));
                lopHoc.setLophoc_trangthai(resultSet.getString("lophoc_trangthai"));
                lopHoc.setLophoc_ngaybatdau(resultSet.getString("lophoc_ngaybatdau"));
                lopHoc.setLophoc_ngayketthuc(resultSet.getString("lophoc_ngayketthuc"));
                lopHoc.setLophoc_soluonghv(resultSet.getInt("lophoc_soluonghv"));
                lopHoc.setLophoc_giaovien_id(resultSet.getInt("lophoc_giaovien_id"));
                lopHoc.setLophoc_phonghoc(resultSet.getString("lophoc_phonghoc"));
                lopHoc.setLophoc_lichhoc(resultSet.getString("lophoc_lichhoc"));
                lopHoc.setLophoc_tailieu(resultSet.getString("lophoc_tailieu"));
                lopHoc.setLophoc_created_at(resultSet.getString("lophoc_created_at"));
                lopHoc.setLophoc_updated_at(resultSet.getString("lophoc_updated_at"));

                list.add(lopHoc);
            }
        } catch (SQLException e) {
            logger.error("Error fetching LopHoc list", e);
        }

        return list;
    }

    @Override
    public int deleteLopHocById(int lophoc_id) {
        String query = "DELETE FROM english_courses_online.lophoc WHERE lophoc_id = ?";
        int isDelete = 0;

        try (Connection connection = MySqlConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, lophoc_id);
            isDelete = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            logger.error("Error deleting LopHoc with id: {}", lophoc_id, e);
        }

        return isDelete;
    }
}