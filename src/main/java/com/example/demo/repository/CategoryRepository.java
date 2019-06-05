package com.example.demo.repository;


import org.springframework.data.repository.PagingAndSortingRepository;

import com.example.demo.Domain.kategor;


public interface CategoryRepository extends PagingAndSortingRepository<kategor, Integer>{

}
