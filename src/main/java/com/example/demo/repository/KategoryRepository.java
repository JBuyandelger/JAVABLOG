package com.example.demo.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.example.demo.domain.kategor;

public interface KategoryRepository extends PagingAndSortingRepository<kategor, Integer>{

}
