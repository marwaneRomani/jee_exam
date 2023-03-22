package com.est.jee_exam.dao;

import java.util.List;

public interface Dao<T> {
    List<T> find();
    T findById(Object object);
    T save(T object);
    T update(T object);
    T delete(Object id);

}
