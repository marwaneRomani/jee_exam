package com.est.jee_exam.business;

import com.est.jee_exam.dao.taskDao.TaskDao;
import com.est.jee_exam.dao.taskDao.TaskDaoMem;
import com.est.jee_exam.models.Task;

import java.util.List;

public class DefaultServices implements Services {
    private static DefaultServices business = null;

    private TaskDao tasksDao;
    private Integer id = 0;
    private Integer order = 0;

    private DefaultServices(TaskDao tasksDao) {
        this.tasksDao = tasksDao;
    }

    public static DefaultServices getInstance() {
        if (business == null)
            business = new DefaultServices(new TaskDaoMem());

        return business;
    }

    @Override
    public List<Task> findTasks() {
        List<Task> tasks = tasksDao.find();

        return tasks;
    }

    @Override
    public Task findTaskById(Task task) {
        Task foundedTask = tasksDao.findById(task.getId());

        return foundedTask;
    }

    @Override
    public Task saveTask(String task) {
        List<Task> tasks = tasksDao.find();
        Task task1 = new Task(id++, task, tasks.size() + 1 );

        Task savedTask = tasksDao.save(task1);
        return savedTask;
    }

    @Override
    public Task updateTask(Task task) {
        Task updated = tasksDao.update(task);
        return updated;
    }

    @Override
    public Task deleteTask(Object id) {
        Task deleted = tasksDao.delete(id);

        return deleted;
    }

    @Override
    public Boolean swapTasksOrder(Object id, int upDown) {
        System.out.println(id + "  " + upDown);
        tasksDao.swapOrder(id, upDown);

        return true;
    }
}
