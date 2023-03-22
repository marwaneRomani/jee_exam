package com.est.jee_exam.business;

import com.est.jee_exam.models.Task;

import java.util.List;

public interface Services {
    List<Task> findTasks();
    Task findTaskById(Task task);
    Task saveTask(String task);
    Task updateTask(Task task);
    Task deleteTask(Object id);
    Boolean swapTasksOrder(Object id, int upDown);
}
