package com.baokaka.reponsitory;

import com.baokaka.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User ,Long> {
    public void deleteUserByUserName(String userName);
}
