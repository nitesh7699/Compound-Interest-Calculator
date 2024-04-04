package Java;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.lang.String;
import java.io.*;


@WebServlet(name = "CalculatorServlet" , urlPatterns = {"", "/calc"})
public class CalculatorServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException, ServletException{
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request , HttpServletResponse response) throws IOException, ServletException {

        String principalAmount = request.getParameter("principalAmt");
        String interestPerc = request.getParameter("interestPerc");
        String years = request.getParameter("years");
        String compoundingPeriod = request.getParameter("compoundingPeriod");

        String error;
        String emptyString = "";

        if(principalAmount==null || interestPerc==null || years==null || compoundingPeriod==null ||
                principalAmount.equals(emptyString) || interestPerc.equals(emptyString) ||
                years.equals(emptyString) || compoundingPeriod.equals(emptyString)){

            error = "One or more of the input boxes are blank. Try again";
            request.setAttribute("error", error);
        }
        else{
            double result = Utils.calcCompInt(Double.parseDouble(principalAmount), Double.parseDouble(interestPerc)/100,
                    Integer.parseInt(years), Integer.parseInt(compoundingPeriod));

            request.setAttribute("result", result);
        }

        //setting all those values back to the input boxes, so that it does not disappear
        request.setAttribute("principal", principalAmount);
        request.setAttribute("interest", interestPerc);
        request.setAttribute("years", years);
        request.setAttribute("compoundingPeriod", compoundingPeriod);


        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);

    }
}























