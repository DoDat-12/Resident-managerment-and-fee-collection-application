package com.manager.payment_manager.Services;

import com.manager.payment_manager.Models.Fee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FeeService {
    public static List<String> getAllFeeName() {
        List<String> result = new ArrayList<>();
        try (Connection conn = Utils.getConnection()) {
            PreparedStatement pst = conn.prepareStatement("select ten from Khoan_thu");
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                result.add(rs.getString("ten"));
            }
        } catch (SQLException e) {
            System.out.println("Can not query feeName");
            System.out.println(e.getMessage());
        }
        return result;
    }
    public static int phaseMax(String feeName) {
        int result = 1;
        try (Connection conn = Utils.getConnection()) {
            PreparedStatement pst = conn.prepareStatement(
                "select max(dot_nop) from Khoan_thu_log, Khoan_thu where Khoan_thu_log.id_khoan_thu = Khoan_thu.id_khoan_thu AND Khoan_thu.ten LIKE ?");
            pst.setString(1, feeName);
            ResultSet rs = pst.executeQuery();

            while (rs.next())
                result = rs.getInt(1);
            rs.close();
            pst.close();
        } catch (SQLException e) {
            System.out.println("Can not query phase");
            System.out.println(e.getMessage());
        }
        return result;
    }

    public static void addKhoanThu(Fee fee){
        try(Connection conn = Utils.getConnection()){
            String sql = "insert into Khoan_thu (loai, ten, don_gia, ngay_bat_dau, ngay_ket_thuc) " +
                    "value (?, ?, ?, ?, ?)";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, fee.getFee_type());
            pst.setString(2, fee.getFee_name());
            pst.setInt(3, fee.getDon_gia());
            pst.setDate(4, fee.getNgay_bat_dau());
            pst.setDate(5, fee.getNgay_ket_thuc());
            pst.executeUpdate();

            pst.close();
        }catch(SQLException e){
            System.out.println("Error in Insert Khoan Thu to database");
            System.out.println(e.getMessage());
        }
    }

}
