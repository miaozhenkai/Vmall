package com.mzk.vmall.utils;

import org.apache.commons.dbcp.BasicDataSourceFactory;

import javax.sql.DataSource;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Properties;

public class DBUtils {

    public static PreparedStatement pstm;
    // 数据库连接池封装对象
    public static DataSource dataSource;

    // 属性文件对象
    public static Properties properties = new Properties();

    static {
        InputStream is = DBUtils.class.getClassLoader().getResourceAsStream(
                "jdbc.properties");

        try {
            properties.load(is);

            dataSource = BasicDataSourceFactory.createDataSource(properties);

        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    //两次update取到的是同一个conn连接
    private static ThreadLocal<Connection> tl = new ThreadLocal<Connection>();

    public static Connection getConnection() {

        Connection conn = tl.get();// 从当前线程上获得链接
        try {
            if (conn == null || conn.isClosed()) {
                conn = dataSource.getConnection();
                tl.set(conn);// 把连接绑定到当前线程上
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return conn;
    }


    public static void closeAll(Connection con, PreparedStatement pstm,
                                ResultSet rs) {

        try {
            if (rs != null)
                rs.close();
            if (pstm != null)
                pstm.close();
            if (con != null && !con.isClosed())
                con.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    // 所有的增删改的方法
    public static int myExecuteUpdate(String sql, List list) throws Exception {

        pstm = getConnection().prepareStatement(sql);
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                pstm.setObject(i + 1, list.get(i));
            }
        }
        return pstm.executeUpdate();
    }

    // 所有的查询的方法
    public static ResultSet myExecuteQuery(String sql, List list) {

        try {
            pstm = getConnection().prepareStatement(sql);
            if (list != null) {
                for (int i = 0; i < list.size(); i++) {
                    pstm.setObject(i + 1, list.get(i));
                }
            }
            return pstm.executeQuery();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

    public static void startTransaction() {
        Connection conn = getConnection();
        try {
            conn.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void commit() {
        Connection conn = getConnection();
        try {
            conn.commit();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void rollback() {
        Connection conn = getConnection();
        try {
            conn.rollback();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void release() {
        Connection conn = getConnection();
        try {
            conn.close();
            tl.remove();// 与线程池有关，解除关系
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void endTransaction() {
        Connection conn = getConnection();
        try {
            //设置自动提交为真
            conn.setAutoCommit(true);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
