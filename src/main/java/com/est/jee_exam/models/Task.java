package com.est.jee_exam.models;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
public @Data class Task {
    private Integer id;
    private String task;
    private Integer order;
}
