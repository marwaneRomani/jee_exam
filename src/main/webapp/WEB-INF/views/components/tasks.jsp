<%@ page import="com.est.jee_exam.models.Task" %>
<%@ page import="java.util.List" %>
<style>
    #table {
        padding: 3rem;
    }

    .data-table {
        border-collapse: collapse;
        font-size: 0.9em;
        min-width: 400px;
        border-radius: 5px 5px 0 0;
        overflow: hidden;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
    }

    .data-table thead tr {
        background-color: #009879;
        color: #ffffff;
        text-align: left;
        font-weight: bold;
    }


    .data-table th,
    .data-table td {
        padding: 12px 15px;
    }

    .data-table tbody tr {
        border-bottom: 1px solid #dddddd;
    }

    .data-table tbody tr:nth-of-type(even) {
        background-color: #f3f3f3;
    }

    .data-table tbody tr:last-of-type {
        border-bottom: 2px solid #009879;
    }

    .data-table tbody tr.active-row {
        font-weight: bold;
        color: #009879;
    }

    .button-delete {
        margin: .3rem;
        background-color: #F44336;
        border: 1px solid #F44336;
        border-radius: 3px;
        color: #ffffff;
        padding: 10px 25px;
        text-align: center;
        text-decoration: none;
        font-size: 13px;
        cursor: pointer;
        margin: 3px ;
    }

    .button-swap {
        margin: .3rem;
        background-color: #21c594;
        border: 1px solid #21c594;
        border-radius: 3px;
        color: #ffffff;
        padding: 10px 25px;
        text-align: center;
        text-decoration: none;
        font-size: 13px;
        cursor: pointer;
        margin: 3px ;
    }
    .disable {
        background-color: #aaaaaa;
    }
</style>

<table id="table" class="data-table">
    <thead>
    <tr>
        <th>id</th>
        <th>task</th>
        <th>order</th>
        <th>delete</th>
        <th>swapUp</th>
        <th>swapDown</th>
    </tr>
    </thead>

    <tbody id="table-body">
        <%
            List<Task> tasks = (List<Task>) request.getAttribute("tasks");
       //     List<Task> tasks = List.of(new Task(1, "my task", 0));

        %>
        <% for (Task task : tasks) { %>
        <tr>
            <td><%= task.getId() %></td>
            <td><%= task.getTask() %></td>
            <td ><%= task.getOrder() %></td>
            <td>
                <form action="deleteTask">
                    <input type="hidden" name="id" value="<%= task.getId()%>">
                    <button type="submit" class="button-delete">Delete</button>
                </form>
            </td>
            <td>
                <form action="swapTaskOrder">
                    <input type="hidden"  name="id" value="<%= task.getId()%>">
                    <input type="hidden"  name="order" value="<%= task.getOrder()%>">
                    <input type="hidden"  name="upDown" value="up">
                    <button class="button-swap">swapDown</button>
                </form>
            </td>
            <td>
                <form action="swapTaskOrder">
                    <input type="hidden"  name="id" value="<%= task.getId()%>">
                    <input type="hidden"  name="oder" value="<%= task.getOrder()%>">
                    <input type="hidden"  name="upDown" value="down">

                    <button class="button-swap">swapUp</button>
                </form>
            </td>
        </tr>
        <% } %>

    </tbody>

</table>
