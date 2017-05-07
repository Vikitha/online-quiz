import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;

public class LoginServlet extends HttpServlet
{
	public void service(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		int flag=0;
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String name=request.getParameter("name");
		String pwd=request.getParameter("password");

		Connection con=null;
		Statement st=null;

		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","oracle");
			st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from userdt");
			while(rs.next())
			{
				String n=rs.getString(1);
				String p=rs.getString(2);
				if((n.equals(name))&&p.equals(pwd))
				{
					flag=1;
					break;
				}				
			}
			if(flag==0)
				response.sendRedirect("dlogin.html");
			else
				response.sendRedirect("home1.html");
		}

		catch(Exception e)
		{
			out.print(e);
		}

	}
}