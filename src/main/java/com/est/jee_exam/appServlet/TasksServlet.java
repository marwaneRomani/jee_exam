package com.est.jee_exam.appServlet;

import com.est.jee_exam.business.DefaultServices;
import com.est.jee_exam.models.Task;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "tasksServlet", value = "/tasks")
public class TasksServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        DefaultServices services = DefaultServices.getInstance();
        List<Task> tasks = services.findTasks();
        
        request.setAttribute("tasks", tasks);
        request.getRequestDispatcher("/WEB-INF/views/tasksPage.jsp").forward(request, response);
    }

}
