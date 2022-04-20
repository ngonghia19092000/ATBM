package com.tnt.laptrinhjavaweb.dao.impl;

import com.tnt.laptrinhjavaweb.RowMapper.UserMapper;
import com.tnt.laptrinhjavaweb.dao.IUserDAO;
import com.tnt.laptrinhjavaweb.model.UserModel;
import com.tnt.laptrinhjavaweb.paging.Pageble;

import java.util.List;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {

    @Override
    public UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
        StringBuilder sql = new StringBuilder("select * from user");
        sql.append(" inner join role on user.roleid = role.id");
        sql.append(" where username = ? and password = ? and status = ?");
        List<UserModel> users = query(sql.toString(), new UserMapper(), userName, password, status);
        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public Long saveFB(UserModel userModel) {
        StringBuilder sql = new StringBuilder("insert into user(username,password,fullname,status, roleid, facebookid)");
        sql.append(" values(?, ?, ?, ?, ?, ?)");
        return insert(sql.toString(), userModel.getUserName(), userModel.getPassword(), userModel.getFullName(),
                userModel.getStatus(), userModel.getRoleId(), userModel.getFacebookId());
    }

    @Override
    public Long save(UserModel userModel) {
        StringBuilder sql = new StringBuilder("insert into user(username, password, fullname, status, roleid, email, address, image, createddate, createdBy)");
        sql.append(" values(?, ?, ?, ?, ?, ?, ?, ?)");
        return insert(sql.toString(), userModel.getUserName(), userModel.getPassword(), userModel.getFullName(),
                userModel.getStatus(), userModel.getRoleId(), userModel.getEmail(), userModel.getAddress(), userModel.getImage(), userModel.getCreatedDate(), userModel.getCreatedBy());
    }

    @Override
    public UserModel findOne(Long id) {
        String sql = "select * from user inner join role on user.roleid = role.id where user.id = ?";
        List<UserModel> users = query(sql, new UserMapper(), id);
        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public List<UserModel> findAll(Pageble pageble) {
        StringBuilder sql = new StringBuilder("select * from user as u inner join role as r on r.id = u.roleid");
        if (pageble.getSorter() != null) {
            sql.append(" order by " + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy());
        }
        if (pageble.getOffset() != null && pageble.getLimit() != null) {
            sql.append(" LIMIT " + pageble.getOffset() + "," + pageble.getLimit());
        }
        return query(sql.toString(), new UserMapper());
    }

    @Override
    public int getTotalItem() {
        String sql = "select * from user";
        return count(sql);
    }

    @Override
    public UserModel findOneByUserName(String username) {
        String sql = "select * from user inner join role on user.roleid = role.id where user.username = ?";
        List<UserModel> users = query(sql, new UserMapper(), username);
        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public UserModel findOneByEmail(String email) {
        String sql = "select * from user inner join role on user.roleid = role.id where user.email = ?";
        List<UserModel> users = query(sql, new UserMapper(), email);
        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public UserModel findByFacebookbId(Long fb) {
        String sql = "select * from user inner join role on user.roleid = role.id where user.facebookid = ?";
        List<UserModel> users = query(sql, new UserMapper(), fb);
        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public UserModel changePass(UserModel userModel) {
        String sql = "UPDATE user SET password = ?, modifieddate = ?, modifiedby = ? WHERE email = ?";
        update(sql, userModel.getPassword(), userModel.getModifiedDate(), userModel.getModifiedBy(), userModel.getEmail());
        UserModel user = findOneByEmail(userModel.getEmail());
        return user == null ? null : user;
    }

    @Override
    public UserModel changePassById(UserModel userModel) {
        String sql = "UPDATE user SET password = ?, modifieddate = ?, modifiedby = ? WHERE id = ?";
        update(sql, userModel.getPassword(), userModel.getModifiedDate(), userModel.getModifiedBy(), userModel.getId());
        UserModel user = findOne(userModel.getId());
        return user == null ? null : user;
    }


    @Override
    public UserModel updateByUser(UserModel updateUser) {
        StringBuilder sql = new StringBuilder("update user set fullname = ?, username = ?, email = ?, address = ?, phone = ?, gender = ?, birthday = ?,");
        sql.append(" modifieddate = ? where user.id = ?");
        update(sql.toString(), updateUser.getFullName(), updateUser.getUserName(), updateUser.getEmail(), updateUser.getAddress(),
                updateUser.getPhone(), updateUser.getGender(), updateUser.getBirthday(),
                updateUser.getModifiedDate(), updateUser.getId());
        return findOne(updateUser.getId());
    }

    @Override
    public List<UserModel> findAllUser() {
        String sql = "select * from user";
        return query(sql, new UserMapper());

    }

    @Override
    public List<UserModel> findAllByRole() {
        String sql = "select * from user inner join role on user.roleid = role.id where user.roleid  = 1";
        return query(sql, new UserMapper());
    }

    @Override
    public void update(UserModel updateUser) {
        StringBuilder sql = new StringBuilder("update user set fullname = ?, username = ?, email = ?, roleid = ?, address = ?, status = ?,");
        sql.append(" modifiedby = ?, modifieddate = ? where user.id = ?");

        update(sql.toString(), updateUser.getFullName(), updateUser.getUserName(), updateUser.getEmail(), updateUser.getRoleId(), updateUser.getAddress(), updateUser.getStatus(),
                updateUser.getModifiedBy(), updateUser.getModifiedDate(), updateUser.getId());


    }

    @Override
    public Long saveUserByAdmin(UserModel userModel) {
        StringBuilder sql = new StringBuilder("insert into user(fullname, username, password, email, roleid, address, image, status, createddate, createdby)");
        sql.append(" values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        return insert(sql.toString(), userModel.getFullName(), userModel.getUserName(), userModel.getPassword(), userModel.getEmail(), userModel.getRoleId()
                , userModel.getAddress(), userModel.getImage(), userModel.getStatus(), userModel.getCreatedDate(), userModel.getCreatedBy());
    }

    @Override
    public void delete(long id) {
        String sql = "DELETE FROM user WHERE id= ?";
        update(sql, id);
    }
}
