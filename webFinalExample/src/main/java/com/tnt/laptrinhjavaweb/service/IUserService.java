package com.tnt.laptrinhjavaweb.service;

import com.tnt.laptrinhjavaweb.model.UserModel;
import com.tnt.laptrinhjavaweb.paging.Pageble;

import java.util.List;

public interface IUserService {
    UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status);
    UserModel save(UserModel userModel);
    UserModel saveFB(UserModel userModel);
    List<UserModel> findAll(Pageble pageble);

    int getTotalItem();
    UserModel findOne(Long id);
    UserModel findOneByUserName(String username);
    UserModel findOneByUserEmail(String email);
    UserModel findByFacebookbId(Long fb);
    UserModel changePassword(UserModel userModel);
    UserModel changePassById(UserModel userModel);

    List<UserModel> findAllUser();
    List<UserModel> findAllByRole();
    UserModel updateByUser(UserModel updateUser);


    UserModel updateByAdmin(UserModel updateUser);

    UserModel saveUserByAdmin(UserModel userModel);
    void delete(Long[] ids);
}
