package com.example.ECom.repo;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.ECom.entity.EcomEntity;

@Repository
public interface EcomRepo extends JpaRepository<EcomEntity, String> {

	Optional<EcomEntity> findByUsername(String username);

}
