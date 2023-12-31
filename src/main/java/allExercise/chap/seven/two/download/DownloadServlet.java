package allExercise.chap.seven.two.download;

import allExercise.chap.seven.two.business.User;
import allExercise.chap.seven.two.business.Product;
import allExercise.chap.seven.two.data.ProductIO;
import allExercise.chap.seven.two.data.UserIO;
import allExercise.chap.seven.two.util.CookieUtil;

import java.io.*;
import java.util.Enumeration;
import java.util.Map;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/download02")
public class DownloadServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
            throws IOException, ServletException {

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "viewAlbums";  // default action
        }

        // perform action and set URL to appropriate page
        String url = "/c7e2";
        if (action.equals("viewAlbums")) {
            url = "/c7e2";
        } else if (action.equals("checkUser")) {
            url = checkUser(request, response);
            System.out.println("url check user: " + url);
        } else if (action.equals("viewCookies")) {
            url = "/child/chap07_ex2/view_cookies.jsp";
        } else if (action.equals("deleteCookies")) {
            url = deleteCookies(request, response);
        }

        // forward to the view
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    @Override
    public void doPost(HttpServletRequest request,
                       HttpServletResponse response)
            throws IOException, ServletException {

        String action = request.getParameter("action");
        // perform action and set URL to appropriate page
        String url = "/c7e2";
        if (action.equals("registerUser")) {
            url = registerUser(request, response);
        }

        // forward to the view
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    private String checkUser(HttpServletRequest request,
                             HttpServletResponse response) {

        String productCode = request.getParameter("productCode");
        HttpSession session = request.getSession();

        // get Product object and set it as session attribute
        ServletContext sc = this.getServletContext();
        String productPath = sc.getRealPath("/child/chap07_ex2/WEB-INF/products.txt");
       /* System.out.println("product path: " + productPath);
        System.out.println("product code: " + productCode);*/
        Product product = ProductIO.getProduct(productCode, productPath);
//        System.out.println("AAAAAAAA" + product.getDescription());
        session.setAttribute("product", product);

        // get the User object
        User user = (User) session.getAttribute("user");

        String url;
        // if User object doesn't exist, check email cookie
        if (user == null) {
            Cookie[] cookies = request.getCookies();
            String emailAddress =
                    CookieUtil.getCookieValue(cookies, "emailCookie");

            // if cookie doesn't exist, go to Registration page
            if (emailAddress == null || emailAddress.equals("")) {
                url = "/child/chap07_ex2/register.jsp";
            }
            // if cookie exists, create User object and go to Downloads page
            else {
                String path = sc.getRealPath("/WEB-INF/EmailList.txt");
                user = UserIO.getUser(emailAddress, path);
                session.setAttribute("user", user);
                url = "/child/chap07_ex2/" + productCode + "_download.jsp";
            }
        }
        // if User object exists, go to Downloads page
        else {
            url = "/child/chap07_ex2/" + productCode + "_download.jsp";
        }
        return url;
    }

    private String registerUser(HttpServletRequest request,
                                HttpServletResponse response) {

        // get the user data
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        // store the data in a User object
        User user = new User();
        user.setEmail(email);
        user.setFirstName(firstName);
        user.setLastName(lastName);

        // write the User object to a file
        ServletContext sc = getServletContext();
        String path = sc.getRealPath("/WEB-INF/EmailList.txt");
        UserIO.add(user, path);

        // store the User object as a session attribute
        HttpSession session = request.getSession();
        session.setAttribute("user", user);

        // add a cookie that stores the user's email to browser
        Cookie c = new Cookie("emailCookie", email);
        c.setMaxAge(60 * 60 * 24 * 365 * 2); // set age to 2 years
        c.setPath("/");                      // allow entire app to access it
        response.addCookie(c);
        // create and return a URL for the appropriate Download page
        Product product = (Product) session.getAttribute("product");
        String url = "/child/chap07_ex2/" + product.getCode() + "_download.jsp";
        return url;
    }

    private String deleteCookies(HttpServletRequest request,
                                 HttpServletResponse response) {

        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            cookie.setMaxAge(0); //delete the cookie
            cookie.setPath("/"); //allow the download application to access it
            response.addCookie(cookie);
        }
        String url = "/child/chap07_ex2/delete_cookies.jsp";
        return url;
    }
}