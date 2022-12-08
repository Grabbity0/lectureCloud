package com.wp.lectureweb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDAO{

	private static Connection conn;
	private static final String USERNAME = "grabbity0";
	private static final String PASSWORD = "happy0220@";
	private static final String URL = "jdbc:mysql://lecture-cloud-db.mysql.database.azure.com:3306/quickstartdb?useSSL=true";
	
	protected Statement stmt = null;
	protected ResultSet rs = null;
	
	public UserDAO() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}
	
	protected void connect() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		// connect to DB server
		conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
	}
	
	protected void disconnect() throws SQLException{
		// disconnect from DB server
		if(rs != null){
			rs.close();
		}
		if(stmt != null){
			stmt.close();
		}
		if(conn != null){
			conn.close();	
		}
	}	
	
	
	
	
	
	public List<UserVO> selectAllUsers() {
		// TODO Auto-generated method stub
		List<UserVO> usersList = null;
		
		try {
			connect();
			
			if(conn != null){
				stmt = conn.createStatement();
				
				String sql = "select * from userList order by user_id";
				rs = stmt.executeQuery(sql);
				
				if(rs.isBeforeFirst()){
					usersList = new ArrayList<UserVO>();
					
					while(rs.next()) {
						UserVO users = new UserVO();
						users.setUser_id(rs.getString("user_id"));
						users.setUser_pw(rs.getString("user_pw"));
						users.setUser_name(rs.getString("user_name"));
						users.setUser_email(rs.getString("user_email"));
						users.setUser_phone(rs.getString("user_phone"));
						users.setAdmin(rs.getBoolean("admin"));
						
						usersList.add(users);
					}
				}
			}	
			disconnect();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return usersList;
	}

	
	
	
	public UserVO selectUser(String user_id) {
		// TODO Auto-generated method stub
		UserVO users = null;
		
		try {
			connect();
			
			if(conn != null){
				stmt = conn.createStatement();
				
				String sql = String.format("select * from userList where user_id = '%s'", user_id);
				rs = stmt.executeQuery(sql);
				
				if(rs.isBeforeFirst()){
					users = new UserVO();
					
					rs.next();
						users.setUser_id(rs.getString("user_id"));
						users.setUser_pw(rs.getString("user_pw"));
						users.setUser_name(rs.getString("user_name"));
						users.setUser_email(rs.getString("user_email"));
						users.setUser_phone(rs.getString("user_phone"));
						users.setAdmin(rs.getBoolean("admin"));
					}
				}
			
			disconnect();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return users;
	}

	
	public UserVO loginID(String user_id, String user_pw) {
		// TODO Auto-generated method stub
		UserVO users = null;
		
		try {
			connect();
			
			if(conn != null){
				stmt = conn.createStatement();
				
				String sql = String.format("select * from userList where user_id = '%s' and user_pw = '%s'", user_id, user_pw);
				rs = stmt.executeQuery(sql);

				if(rs.isBeforeFirst()){
					users = new UserVO();
					
					rs.next();
					users.setUser_id(rs.getString("user_id"));
					users.setUser_pw(rs.getString("user_pw"));
					users.setUser_name(rs.getString("user_name"));
					users.setUser_email(rs.getString("user_email"));
					users.setUser_phone(rs.getString("user_phone"));
					users.setAdmin(rs.getBoolean("admin"));
				}
			}
			
			disconnect();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return users;
	}

	
	public int insertUser(UserVO user) {
		// TODO Auto-generated method stub
		int result = -1;
		
		try {
			connect();
			
			if(conn != null){
				stmt = conn.createStatement();
				
				String sql = String.format("insert into userList(user_id, user_pw, user_name, user_email, user_phone, admin)"
						+ "values ('%s', '%s', '%s', '%s', '%s', 0) ", user.getUser_id(), user.getUser_pw(), user.getUser_name(), user.getUser_email(), user.getUser_phone(), user.isAdmin());
				result = stmt.executeUpdate(sql);
			}
			disconnect();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

	
	public int updateUser(UserVO user) {
		// TODO Auto-generated method stub
		int result = -1;
		
		try {
			connect();
			
			if(conn != null){
				stmt = conn.createStatement();
				
				String sql = String.format("update userList set user_pw = '%s', user_name = '%s',"
						+ "user_email = '%s', user_phone = '%s' where user_id = '%s'", user.getUser_pw(), user.getUser_name(), user.getUser_email(), user.getUser_phone(), user.getUser_id());
				result = stmt.executeUpdate(sql);
			}
			disconnect();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

	
	public int deleteUser(String user_id) {
		// TODO Auto-generated method stub
		int result = -1;
		
		try {
			connect();
			
			if(conn != null){
				stmt = conn.createStatement();
				
				String sql = String.format("delete from userList where user_id = '%s'", user_id);
				result = stmt.executeUpdate(sql);
			}
			disconnect();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	

}
