package com.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.model.ManagerModel;

public class ManagerDao {
	JdbcTemplate t1;

	public void setT1(JdbcTemplate t1) {
		this.t1 = t1;
	}

	public int saveInfo(ManagerModel m1) {
		// TODO Auto-generated method stub
		String insetQuery = " INSERT INTO users (first_name , last_name ,password , gender , email , phone_number ,postal_code ) VALUES ( '"
				+ m1.getFirst_name() + "' ,'" + m1.getLast_name() + "' , '" + m1.getPassword() + "' , '"
				+ m1.getGender() + "' , '" + m1.getEmail() + "' , '" + m1.getPhone_number() + "' , '"
				+ m1.getPostal_code() + "' )  ";

		return t1.update(insetQuery);
	}

	public List<ManagerModel> getAllInfo() {
		String selectQuery = " SELECT * FROM users  ";
		return t1.query(selectQuery, new RowMapper<ManagerModel>() {

			@Override
			public ManagerModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				ManagerModel mr = new ManagerModel();
				mr.setId(rs.getInt(1));
				mr.setFirst_name(rs.getString(2));
				mr.setLast_name(rs.getString(3));
				mr.setPassword(rs.getString(4));
				mr.setGender(rs.getString(5));
				mr.setEmail(rs.getString(6));
				mr.setPhone_number(rs.getString(7));
				mr.setPostal_code(rs.getString(8));
				return mr;
			}

		});

	}

	public int deleteInfo(int id) {
		// TODO Auto-generated method stub
		String deleteQuery = " DELETE FROM users WHERE id =  " + id + "  ";

		return t1.update(deleteQuery);
	}

	public List<ManagerModel> editData(int id) {

		String selectQueryByID = " SELECT * FROM users WHERE id = " + id + " ";

		return t1.query(selectQueryByID, new RowMapper<ManagerModel>() {

			@Override
			public ManagerModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				ManagerModel mr = new ManagerModel();
				mr.setId(rs.getInt(1));
				mr.setFirst_name(rs.getString(2));
				mr.setLast_name(rs.getString(3));
				mr.setPassword(rs.getString(4));
				mr.setGender(rs.getString(5));
				mr.setEmail(rs.getString(6));
				mr.setPhone_number(rs.getString(7));
				mr.setPostal_code(rs.getString(8));
				return mr;
			}

		});
	}

	public int updateInfo(ManagerModel m1) {
		System.out.println("m1 model : " + m1.getFirst_name());
		// TODO Auto-generated method stub
		String updateQuery = " UPDATE users SET   first_name = '" + m1.getFirst_name() + "',  last_name = '"
				+ m1.getLast_name() + "',  password = '" + m1.getPassword() + "', gender = '" + m1.getGender()
				+ "', phone_number = '" + m1.getPhone_number() + "',  postal_code = '" + m1.getPostal_code()
				+ "' WHERE  id = " + m1.getId() + " ";
		return t1.update(updateQuery);
	}

	public List<ManagerModel> getDetails(int id) {
		// TODO Auto-generated method stub
		String selectQueryByID = " SELECT * FROM users WHERE id = " + id + " " ;
		return t1.query(selectQueryByID, new RowMapper<ManagerModel>() {

			@Override
			public ManagerModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				ManagerModel mr = new ManagerModel();
				mr.setId(rs.getInt(1));
				mr.setFirst_name(rs.getString(2));
				mr.setLast_name(rs.getString(3));
				mr.setPassword(rs.getString(4));
				mr.setGender(rs.getString(5));
				mr.setEmail(rs.getString(6));
				mr.setPhone_number(rs.getString(7));
				mr.setPostal_code(rs.getString(8));
				return mr;
			}

		});
	}

}
