package com.est.jee_exam.appServlet;


import com.est.jee_exam.business.DefaultServices;
        import com.est.jee_exam.models.Task;
        import jakarta.servlet.ServletException;
        import jakarta.servlet.annotation.WebServlet;
        import jakarta.servlet.http.HttpServlet;
        import jakarta.servlet.http.HttpServletRequest;
        import jakarta.servlet.http.HttpServletResponse;

        import java.io.IOException;

@WebServlet(name = "deleteTaskServlet", value = "/deleteTask")
public class DeleteTaskServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");

        System.out.println(id);

        Task deleted = DefaultServices.getInstance().deleteTask(id);
        System.out.println(deleted);


        if (deleted != null)
            response.sendRedirect("tasks");

    }

}
