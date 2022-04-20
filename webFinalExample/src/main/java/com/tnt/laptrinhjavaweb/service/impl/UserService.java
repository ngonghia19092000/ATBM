package com.tnt.laptrinhjavaweb.service.impl;

import com.tnt.laptrinhjavaweb.dao.IRoleDAO;
import com.tnt.laptrinhjavaweb.dao.IUserDAO;
import com.tnt.laptrinhjavaweb.model.RoleModel;
import com.tnt.laptrinhjavaweb.model.UserModel;
import com.tnt.laptrinhjavaweb.paging.Pageble;
import com.tnt.laptrinhjavaweb.service.IUserService;
import com.tnt.laptrinhjavaweb.utils.MD5Hashing;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;


public class UserService implements IUserService {
    @Inject
    private IUserDAO userDAO;
    @Inject
    private IRoleDAO roleDAO;

    @Override
    public UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
        String pass = MD5Hashing.hash(password);
        return userDAO.findByUserNameAndPasswordAndStatus(userName, pass, status);
    }

    @Override
    public UserModel save(UserModel userModel) {
        UserModel model = null;
        Long userId = 0L;
        userModel.setPassword(MD5Hashing.hash(userModel.getPassword()));
        userModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
        RoleModel roleModel = roleDAO.findOneByCode("USER");
        userModel.setStatus(1);
        userModel.setRoleId(roleModel.getId());
        if(userDAO.findOneByUserName(userModel.getUserName()) == null && userDAO.findOneByEmail(userModel.getEmail()) == null){
            userId = userDAO.save(userModel);
            model = userDAO.findOne(userId);
        }else{
            model = null;
        }
        return model;
    }

    @Override
    public UserModel saveFB(UserModel userModel) {
        userModel.setFullName(userModel.getUserName());
        userModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
        RoleModel roleModel = roleDAO.findOneByCode("USER");
        userModel.setStatus(1);
        userModel.setPassword(MD5Hashing.hash("1111"));
        userModel.setRoleId(roleModel.getId());
//        if(userDAO.findOneByUserName(userModel.getUserName()) == null && userDAO.findOneByEmail(userModel.getEmail()) == null){
            Long userId = userDAO.saveFB(userModel);

        return userDAO.findOne(userId);
    }

    @Override
    public List<UserModel> findAll(Pageble pageble) {
        return userDAO.findAll(pageble);
    }



    @Override
    public int getTotalItem() {
        return userDAO.getTotalItem();
    }

    @Override
    public UserModel findOne(Long id) {
        return userDAO.findOne(id);
    }

    @Override
    public UserModel findOneByUserName(String username) {
        return userDAO.findOneByUserName(username);
    }

    @Override
    public UserModel findOneByUserEmail(String email) {
        return userDAO.findOneByEmail(email);
    }

    @Override
    public UserModel findByFacebookbId(Long fb) {
        return userDAO.findByFacebookbId(fb);
    }

    @Override
    public UserModel changePassword(UserModel userModel) {
        userModel.setModifiedDate(new Timestamp(System.currentTimeMillis()));
        userModel.setModifiedBy("USER");
        userModel.setPassword(MD5Hashing.hash(userModel.getPassword()));
        return userDAO.changePass(userModel);
    }

    @Override
    public UserModel changePassById(UserModel userModel) {
        userModel.setModifiedDate(new Timestamp(System.currentTimeMillis()));
        userModel.setModifiedBy("USER");
        userModel.setPassword(MD5Hashing.hash(userModel.getPassword()));
        return userDAO.changePassById(userModel);
    }


    @Override
    public List<UserModel> findAllUser() {
        return userDAO.findAllUser();
    }

    @Override
    public List<UserModel> findAllByRole() {
        return userDAO.findAllByRole();
    }

    @Override
    public UserModel updateByUser(UserModel updateUser) {
        updateUser.setModifiedDate(new Timestamp(System.currentTimeMillis()));
        return userDAO.updateByUser(updateUser);
    }


    @Override
    public UserModel updateByAdmin(UserModel updateUser) {
        UserModel olUser = userDAO.findOne(updateUser.getId());
        updateUser.setCreatedBy("ADMIN");
        updateUser.setModifiedDate(new Timestamp(System.currentTimeMillis()));
//        RoleModel roleModel= roleDAO.findOneByCode(updateUser.getRoleId().);
//        updateUser.setRoleId(roleModel.getId());
        userDAO.update(updateUser);
        return userDAO.findOne(updateUser.getId());
    }

    @Override
    public UserModel saveUserByAdmin(UserModel userModel) {
        UserModel model = null;
        Long userId = 0L;
        userModel.setPassword(MD5Hashing.hash(userModel.getPassword()));
        userModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
        userModel.setCreatedBy("ADMIN");
        userModel.setStatus(1);
        if(userDAO.findOneByUserName(userModel.getUserName()) == null && userDAO.findOneByEmail(userModel.getEmail()) == null){
            userId = userDAO.saveUserByAdmin(userModel);
            model = userDAO.findOne(userId);
        }else{
            model = null;
        }
        return model;
    }

    @Override
    public void delete(Long[] ids) {
        for (Long id : ids) {

            userDAO.delete(id);
        }
    }

}
