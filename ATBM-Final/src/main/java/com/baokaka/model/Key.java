package com.baokaka.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "key_user")
public class Key implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Long id;
    @Column(name = "user_id")
    Long userId;
    @Column(name ="public_key",length = 16777215)
    String publicKey;

    public Key(Long id, Long userId, String publicKey) {
        this.id = id;
        this.userId = userId;
        this.publicKey = publicKey;
    }

    public Key() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getPublicKey() {
        return publicKey;
    }

    public void setPublicKey(String publicKey) {
        this.publicKey = publicKey;
    }
}
