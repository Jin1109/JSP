package ex8_search_emp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import ex8_emp.Emp;

public class DAO {
	
	public ArrayList<Emp> select(int field, String search_word) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Emp> list = null;
		try {
			
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			
			String field_name[] = { "empno", "ename", "job", "mgr", "hiredate", "sal", "comm", "deptno" };
			String select_sql = "select * from emp where " + field_name[field] + " like ? ";
			
			// PrepardSatement 객체 얻기
			pstmt = conn.prepareStatement(select_sql.toString());
			pstmt.setString(1, "%" + search_word + "%");
			rs = pstmt.executeQuery();
			
			int i = 0;
			
			while(rs.next()) {//더 이상 읽을 데이터가 없을 때까지 반복
				if (i++ == 0) {
					list = new ArrayList<Emp>();
				}
				Emp st = new Emp();
				st.setEmpno(rs.getInt(1));
				st.setEname(rs.getString(2));
				st.setJob(rs.getString(3));
				st.setMgr(rs.getInt(4));
				st.setHiredate(rs.getDate(5));
				st.setSal(rs.getInt(6));
				st.setComm(rs.getInt(7));
				st.setDeptno(rs.getInt(8));
				list.add(st);
			}
		} catch (Exception se) {
			se.printStackTrace();
		} finally {
			try {
				if(rs != null)
				   rs.close();
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			}
			try {
				if(pstmt != null)
				   pstmt.close();
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			}
			try {
				if(conn != null)
				   conn.close();
			} catch(Exception e) {
				System.out.println(e.getMessage());
			}
		}
		return list;
		//return null;
	}
}
