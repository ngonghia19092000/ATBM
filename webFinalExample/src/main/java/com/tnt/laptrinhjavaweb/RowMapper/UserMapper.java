package com.tnt.laptrinhjavaweb.RowMapper;

import com.tnt.laptrinhjavaweb.model.RoleModel;
import com.tnt.laptrinhjavaweb.model.UserModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class    UserMapper implements IRowMapper<UserModel>{
    @Override
    public UserModel mapRow(ResultSet resultSet) {
        try {
            UserModel userModel = new UserModel();
            userModel.setId(resultSet.getLong("id"));
            userModel.setUserName(resultSet.getString("username"));
            userModel.setPassword(resultSet.getString("password"));
            userModel.setFullName(resultSet.getString("fullname"));
            userModel.setGender(resultSet.getString("gender"));
            userModel.setEmail(resultSet.getString("email"));
            userModel.setPhone(resultSet.getString("phone"));
            userModel.setAddress(resultSet.getString("address"));
            userModel.setRoleId(resultSet.getLong("roleid"));
            userModel.setCreatedDate(resultSet.getTimestamp("createddate"));
            userModel.setImage(resultSet.getString("image"));
            userModel.setBirthday(resultSet.getDate("birthday"));

            if(resultSet.getString("facebookid") != null ){
                userModel.setFacebookId(Long.parseLong(resultSet.getString("facebookid")));
            }
            userModel.setStatus(resultSet.getInt("status"));

            try {
                RoleModel roleModel = new RoleModel();
                roleModel.setCode(resultSet.getString("code"));
                roleModel.setName(resultSet.getString("name"));
                userModel.setRoleModel(roleModel);
            } catch (SQLException e) {
                System.out.println(e);
            }

            return userModel;
        } catch (SQLException e) {
            return null;
        }
    }
}
