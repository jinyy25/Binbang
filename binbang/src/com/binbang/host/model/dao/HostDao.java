package com.binbang.host.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import com.binbang.host.model.vo.Host;
import com.binbang.house.model.dao.HouseDao;
import static com.binbang.common.JDBCTemplate.close;

public class HostDao {

	private Properties prop = new Properties();

	public HostDao() {
		try {
			String path = HostDao.class.getResource("/sql/host/host_sql.properties").getPath();
			prop.load(new FileReader(path));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int hostEnroll(Connection conn, Host h) {
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			pstmt = conn.prepareStatement(prop.getProperty("hostEnroll"));
			pstmt.setString(1, h.getMemberNo());
			pstmt.setString(2, h.getIdCard());
			pstmt.setString(3, h.getProfilePic());
			pstmt.setString(4, h.getIntro());
			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public Host selectHostOne(Connection conn, String memberNo) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Host host = null;
		try {
			pstmt = conn.prepareStatement(prop.getProperty("selectHostOne"));
			pstmt.setString(1, memberNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				host = new Host();
				host.setHostName(rs.getString("member_name"));
				host.setHostEmail(rs.getString("email"));
				host.setIntro(rs.getString("intro"));
				host.setProfilePic(rs.getString("profile_pic"));
				host.setComplaintCount(rs.getInt("complaint_count"));
				host.setMemberNo(rs.getString("member_no"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return host;
	}

	public int updateHostInfo(Connection conn, String hostInfo, String memberNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			pstmt = conn.prepareStatement(prop.getProperty("updateHostInfo"));
			pstmt.setString(1, hostInfo);
			pstmt.setString(2, memberNo);
			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public Host selectHostInfo(Connection conn, String hostNo) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Host h = null;
		try {
			pstmt = conn.prepareStatement(prop.getProperty("selectHostInfo"));
			pstmt.setString(1, hostNo);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				h = new Host();
				h.setHostName(rs.getString("member_name"));
				h.setHostAcceptDate(rs.getDate("host_acceptdate"));
				h.setHostEmail(rs.getString("email"));
				h.setIntro(rs.getString("intro"));
				h.setProfilePic(rs.getString("profile_pic"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return h;
	}
}
