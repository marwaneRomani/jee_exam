package com.est.jee_exam.dao.taskDao;

import com.est.jee_exam.models.Task;

import java.util.*;

public class TaskDaoMem implements TaskDao {

    private List<Task> tasks = new ArrayList<>();

    @Override
    public List<Task> find() {
        return tasks;
    }

    @Override
    public Task findById(Object id) {

        for (Task task : tasks) {
            if (task.getId().equals(Integer.parseInt((String) id))) {
                System.out.println(task);
                return task;
            }
        }

        return null;
    }

    @Override
    public Task save(Task task) {
        tasks.add(task);
        return task;
    }

    @Override
    public Task update(Task object) {
        return null;
    }

    @Override
    public Task delete(Object id) {

        Task byId = findById(id);
        System.out.println(tasks.size());
        for (int i = tasks.size() - 1; i >= 0 ; i--) {
            System.out.println(i);
            if (tasks.get(i).getId().equals(byId.getId()))
                break;
            tasks.get(i).setOrder(tasks.get(i).getOrder() - 1);
        }

        boolean removed = tasks.remove(byId);

        if (removed) {
            return byId;
        }


        return null;
    }

    @Override
    public Boolean swapOrder(Object id, Integer upDown) {
        Task task = findById(id);

        if ((task.getOrder() == 1 && upDown == 1) || (task.getOrder() == tasks.size() && upDown == 0))
            return false;

        System.out.println(" task  " + task);

        Task otherTask = null;

        if (upDown  == 0) {
            for (int i = tasks.size() - 1; i >= 0 ; i--) {
                if (tasks.get(i).getId().equals(task.getId())) {
                    otherTask = tasks.get(i + 1);
                    break;
                }
            }
        }
        else {
            for (int i = 0; i < tasks.size() ; i++) {
                if (tasks.get(i).getId().equals(task.getId())) {
                    otherTask = tasks.get(i - 1);
                    break;
                }
            }
        }

        System.out.println("other task : " + otherTask);

        if (otherTask == null)
            return false;

        Integer task1_Order = task.getOrder();
        Integer task2_Order = otherTask.getOrder();

        task.setOrder(task2_Order);
        otherTask.setOrder(task1_Order);

        Collections.swap(tasks, task.getOrder(), otherTask.getOrder());

        return true;
    }
}
