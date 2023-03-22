package com.est.jee_exam.appServlet;

import com.est.jee_exam.business.DefaultServices;
import com.est.jee_exam.models.Task;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "swapTaskOrderServlet", value = "/swapTaskOrder")
public class SwapTaskOrder extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String order = request.getParameter("order");
        String upDown = request.getParameter("upDown");

        int swapPostion = 0;

        if (!upDown.equals("up")) {
            swapPostion = 1;
        }


        Boolean swaped = DefaultServices.getInstance().swapTasksOrder(id, swapPostion);

        if (swaped)
            response.sendRedirect("tasks");
    }

}
