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
    public partial class LOGIN : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\prajw\\OneDrive\\Documents\\Visual Studio 2010\\Projects\\HRM\\HRM\\App_Data\\HRM.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string usr = TextBox3.Text;
                string psw = TextBox4.Text;
                string str = "Select * from login where Hr_Id = '" + usr + "' AND Password = '" + psw + "' ";

                con.Open();
                SqlCommand cmd = new SqlCommand(str, con);
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.Read())
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('Login successfull.');window.location='HR_HOME.aspx';", true);          
                }
                else
                {
                    Response.Write("<script> alert('Incorrect Username Or Password') </script>");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}