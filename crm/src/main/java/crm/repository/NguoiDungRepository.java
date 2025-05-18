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
import crm.model.NguoiDung;

public class NguoiDungRepository {
    private static final Logger logger = LoggerFactory.getLogger(NguoiDungRepository.class);

    public List<NguoiDung> getNguoiDungByNguoiDung_emailAndNguoiDung_MatKhau(String nguoiDung_email, String nguoiDung_MatKhau) {
        List<NguoiDung> list = new ArrayList<>();
        String query = "SELECT * FROM nguoidung WHERE nguoidung_email = ? AND nguoidung_matkhau = ?";

        try (Connection connection = MySqlConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, nguoiDung_email);
            preparedStatement.setString(2, nguoiDung_MatKhau);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    NguoiDung nguoiDung = new NguoiDung();
                    nguoiDung.setNguoidung_id(resultSet.getInt("nguoidung_id"));
                    nguoiDung.setNguoidung_email(resultSet.getString("nguoidung_email"));
                    nguoiDung.setNguoidung_matkhau(resultSet.getString("nguoidung_matkhau"));
                    nguoiDung.setNguoidung_hoten(resultSet.getString("nguoidung_hoten"));
                    nguoiDung.setNguoidung_sdt(resultSet.getString("nguoidung_sdt"));
                    nguoiDung.setNguoidung_diachi(resultSet.getString("nguoidung_diachi"));
                    nguoiDung.setNguoidung_avatar(resultSet.getString("nguoidung_avatar"));
                    nguoiDung.setNguoidung_vaitro(resultSet.getString("nguoidung_vaitro"));
                    nguoiDung.setNguoidung_trangthai(resultSet.getString("nguoidung_trangthai"));
                    nguoiDung.setNguoidung_sodu(resultSet.getInt("nguoidung_sodu"));
                    nguoiDung.setNguoidung_nganhang(resultSet.getString("nguoidung_nganhang"));
                    nguoiDung.setNguoidung_stk(resultSet.getString("nguoidung_stk"));
                    nguoiDung.setNguoidung_created_at(resultSet.getString("nguoidung_created_at"));
                    nguoiDung.setNguoidung_updated_at(resultSet.getString("nguoidung_updated_at"));

                    list.add(nguoiDung);
                }
            }
        } catch (SQLException e) {
            logger.error("Error fetching NguoiDung with email: {}", nguoiDung_email, e);
        }

        return list;
    }
}