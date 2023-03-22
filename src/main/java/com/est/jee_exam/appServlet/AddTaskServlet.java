
package com.est.jee_exam.appServlet;

import com.est.jee_exam.business.DefaultServices;
import com.est.jee_exam.models.Task;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "addTaskServlet", value = "/addTask")
public class AddTaskServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String task = request.getParameter("task");
        System.out.println(task);
        if (task != null) {
            DefaultServices services = DefaultServices.getInstance();


            Task savedTask = services.saveTask(task);

            if (savedTask != null)
                response.sendRedirect("tasks");
        }
        else
            request.getRequestDispatcher("/WEB-INF/views/addTaskPage.jsp").forward(request, response);
    }

}
