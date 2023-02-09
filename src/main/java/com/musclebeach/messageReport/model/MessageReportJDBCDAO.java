package com.musclebeach.messageReport.model;

import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Repository
public class MessageReportJDBCDAO implements MessageReportDAO_interface {
    private static final String INSERT_STMT =
            "INSERT INTO gym.message_report (mem_id,msg_id,report_content) VALUES (?, ?, ?)";
    private static final String GET_ALL_STMT =
            "SELECT report_id,mem_id,msg_id,report_content,report_stime,report_status FROM gym.message_report order by report_id";
    private static final String GET_ONE_STMT =
            "SELECT report_id,mem_id,msg_id,report_content,report_stime,report_status FROM gym.message_report where report_id = ?";
    private static final String UPDATE =
            "UPDATE gym.message_report set report_status=? where report_id = ?";
    String driver = "com.mysql.cj.jdbc.Driver";
    @Resource
    private DataSource dataSource;

    public static void main(String[] args) {

        MessageReportJDBCDAO dao = new MessageReportJDBCDAO();


//		// 新增
//		MessageReportVO messageReportVO1 = new MessageReportVO();
//		messageReportVO1.setMemID(5);
//		messageReportVO1.setMsgID(2);
//		messageReportVO1.setReportContent("1很爛");
//
//		dao.insert(messageReportVO1);


//		// 修改狀態
//		MessageReportVO messageReportVO2 = new MessageReportVO();
//		messageReportVO2.setReportID(4);
//		messageReportVO2.setReportStatus(1);
//		dao.update(messageReportVO2);


//		// 查詢
//		MessageReportVO messageReportVO3 = dao.findByPrimaryKey(4);
//		System.out.print(messageReportVO3.getReportID() + ",");
//		System.out.print(messageReportVO3.getMemID() + ",");
//		System.out.print(messageReportVO3.getMsgID() + ",");
//		System.out.print(messageReportVO3.getReportContent() + ",");
//		System.out.print(messageReportVO3.getReportStime() + ",");
//		System.out.print(messageReportVO3.getReportStatus());
//		System.out.println("---------------------");


//		// 查詢
//		List<MessageReportVO> list = dao.getAll();
//		for (MessageReportVO e : list) {
//			System.out.print(e.getReportID() + ",");
//			System.out.print(e.getMemID() + ",");
//			System.out.print(e.getMsgID() + ",");
//			System.out.print(e.getReportContent() + ",");
//			System.out.print(e.getReportStime() + ",");
//			System.out.print(e.getReportStatus());
//			System.out.println();
//		}
    }

    @Override
    public void insert(MessageReportVO messageReportVO) {

        Connection con = null;
        PreparedStatement pstmt = null;

        try {

            Class.forName(driver);
            con = dataSource.getConnection();
            pstmt = con.prepareStatement(INSERT_STMT);

            pstmt.setInt(1, messageReportVO.getMemID());
            pstmt.setInt(2, messageReportVO.getMsgID());
            pstmt.setString(3, messageReportVO.getReportContent());

            pstmt.executeUpdate();

            // Handle any driver errors
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Couldn't load database driver. "
                    + e.getMessage());
            // Handle any SQL errors
        } catch (SQLException se) {
            throw new RuntimeException("A database error occured. "
                    + se.getMessage());
            // Clean up JDBC resources
        } finally {
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException se) {
                    se.printStackTrace(System.err);
                }
            }
            if (con != null) {
                try {
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace(System.err);
                }
            }
        }

    }

    @Override
    public void update(MessageReportVO messageReportVO) {

        Connection con = null;
        PreparedStatement pstmt = null;

        try {

            Class.forName(driver);
            con = dataSource.getConnection();
            pstmt = con.prepareStatement(UPDATE);

            pstmt.setInt(1, messageReportVO.getReportStatus());
            pstmt.setInt(2, messageReportVO.getReportID());

            pstmt.executeUpdate();

            // Handle any driver errors
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Couldn't load database driver. "
                    + e.getMessage());
            // Handle any SQL errors
        } catch (SQLException se) {
            throw new RuntimeException("A database error occured. "
                    + se.getMessage());
            // Clean up JDBC resources
        } finally {
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException se) {
                    se.printStackTrace(System.err);
                }
            }
            if (con != null) {
                try {
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace(System.err);
                }
            }
        }

    }

    @Override
    public MessageReportVO findByPrimaryKey(Integer reportID) {

        MessageReportVO messageReportVO = null;
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {

            Class.forName(driver);
            con = dataSource.getConnection();
            pstmt = con.prepareStatement(GET_ONE_STMT);

            pstmt.setInt(1, reportID);

            rs = pstmt.executeQuery();

            while (rs.next()) {
                messageReportVO = new MessageReportVO();
                messageReportVO.setReportID(rs.getInt("report_id"));
                messageReportVO.setMemID(rs.getInt("mem_id"));
                messageReportVO.setMsgID(rs.getInt("msg_id"));
                messageReportVO.setReportContent(rs.getString("report_content"));
                messageReportVO.setReportStime(rs.getTimestamp("report_stime"));
                messageReportVO.setReportStatus(rs.getInt("report_status"));
            }

            // Handle any driver errors
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Couldn't load database driver. "
                    + e.getMessage());
            // Handle any SQL errors
        } catch (SQLException se) {
            throw new RuntimeException("A database error occured. "
                    + se.getMessage());
            // Clean up JDBC resources
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException se) {
                    se.printStackTrace(System.err);
                }
            }
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException se) {
                    se.printStackTrace(System.err);
                }
            }
            if (con != null) {
                try {
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace(System.err);
                }
            }
        }
        return messageReportVO;
    }

    @Override
    public List<MessageReportVO> getAll() {
        List<MessageReportVO> list = new ArrayList<MessageReportVO>();
        MessageReportVO messageReportVO = null;

        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {

            Class.forName(driver);
            con = dataSource.getConnection();
            pstmt = con.prepareStatement(GET_ALL_STMT);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                messageReportVO = new MessageReportVO();
                messageReportVO.setReportID(rs.getInt("report_id"));
                messageReportVO.setMemID(rs.getInt("mem_id"));
                messageReportVO.setMsgID(rs.getInt("msg_id"));
                messageReportVO.setReportContent(rs.getString("report_content"));
                messageReportVO.setReportStime(rs.getTimestamp("report_stime"));
                messageReportVO.setReportStatus(rs.getInt("report_status"));

                list.add(messageReportVO); // Store the row in the list
            }

            // Handle any driver errors
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Couldn't load database driver. "
                    + e.getMessage());
            // Handle any SQL errors
        } catch (SQLException se) {
            throw new RuntimeException("A database error occured. "
                    + se.getMessage());
            // Clean up JDBC resources
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException se) {
                    se.printStackTrace(System.err);
                }
            }
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException se) {
                    se.printStackTrace(System.err);
                }
            }
            if (con != null) {
                try {
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace(System.err);
                }
            }
        }
        return list;
    }

}