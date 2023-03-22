package com.est.jee_exam.dao.taskDao;

import com.est.jee_exam.dao.Dao;
import com.est.jee_exam.models.Task;

public interface TaskDao extends Dao<Task> {
    Boolean swapOrder(Object id, Integer upDown);
}
