package com.mzk.vmall.dao;

import com.mzk.vmall.pojo.Users;

import java.util.List;

public interface UsersDao {
    public Users getUsersByname(String u_name);

    //得到所有的用户集合
    public List<Users> getAllUsers();
    //取n条用户数据
    public List<Users> getUsersList(int page,int limit);
    //根据u_id更新用户信息
    public int updateUsersByU_id(Users u) throws Exception;
    //根据u_id删除用户
    public int deleteUsersByU_id(Integer u_id)throws Exception;
    //添加用户
    public int addUsers(Users u)throws Exception;
    //得到所有用户数量
    public int getAllUsersNumber();
    //根据id取对象
    public Users getUsersByU_id(int u_id);
    //查用户名
    public Users getUsersByU_name(String u_name);

}
