using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace HRM
{
    public partial class DEL_EMP : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\prajw\\OneDrive\\Documents\\Visual Studio 2010\\Projects\\HRM\\HRM\\App_Data\\HRM.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/HR_HOME.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string empId = TextBox2.Text;
                string str = "DELETE from EMPLOYEE_DETAILS WHERE Emp_Id ='" + empId + "' ";
                SqlCommand cmd = new SqlCommand(str, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('EMPLOYEE DELETED SUCCESSFULLY');window.location='HR_HOME.aspx';", true);          
                //Response.Write("<script> alert('EMPLOYEE DELETED SUCCESSFULLY') </script>");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}