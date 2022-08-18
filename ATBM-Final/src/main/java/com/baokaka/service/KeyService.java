package com.baokaka.service;

import com.baokaka.model.Key;
import com.baokaka.reponsitory.KeyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.security.PublicKey;
import java.util.List;

@Service
public class KeyService {

    @Autowired
    private KeyRepository keyRepository;

    public boolean checkExist(Long userId){
        for(Key key:keyRepository.findAll()){
            if(key.getUserId().equals(userId)){
                return true;
            }
        }
        return false;
    }

    public void updateKey(Key key){
        keyRepository.save(key);
    }

    public Key findByUserId(Long userId){
        for(Key key:keyRepository.findAll()){
            if(key.getUserId().equals(userId)){
                return key;
            }
        }
        return null;
    }

    public String findPublicKeyByUserId(Long userId){
        Key k = findByUserId(userId);
        if(k!=null){
            return k.getPublicKey();
        }
        return null;
    }

    public void addKey(Key key){
        if(!checkExist(key.getUserId())){
            keyRepository.save(key);
        }
    }

    public List<Key> getAllKey() {
        return keyRepository.findAll();
    }

    public void deleteKey(Long userId){
        keyRepository.findById(userId).ifPresent(keyRepository::delete);

    }
}
