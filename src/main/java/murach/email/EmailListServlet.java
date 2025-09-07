package murach.email;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import murach.business.User;

public class EmailListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null) action = "join";

        String url = "/index.jsp";

        if ("join".equals(action)) {
            url = "/index.jsp";

        } else if ("add".equals(action)) {
            String firstName = request.getParameter("firstName");
            String lastName  = request.getParameter("lastName");
            String email     = request.getParameter("email");

            // user cho EL
            User user = new User(firstName, lastName, email);
            request.setAttribute("user", user);

            // (Bài 8-1) Ngày hiện tại cho EL
            request.setAttribute("currentDate", LocalDate.now());

            // (Bài 8-1) Lưu list user ở session
            @SuppressWarnings("unchecked")
            List<User> users = (List<User>) request.getSession().getAttribute("users");
            if (users == null) users = new ArrayList<>();
            users.add(user);
            request.getSession().setAttribute("users", users);

            url = "/thanks.jsp";
        }

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
