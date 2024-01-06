using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace HRM
{
    public partial class UpdateEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/HR_HOME.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\prajw\\OneDrive\\Documents\\Visual Studio 2010\\Projects\\HRM\\HRM\\App_Data\\HRM.mdf;Integrated Security=True;User Instance=True");
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Update EMPLOYEE_DETAILS set Emp_Name = @a1, Department = @a3, Designation= @a4, PhNo = @a5, Email= @a6, Availed_Leaves= @a9, Total_Leaves= @a10, Salary= @a11  where Emp_Id = @a2", con);
                cmd.Parameters.AddWithValue("@a1", TextBox1.Text);
                cmd.Parameters.AddWithValue("@a2", int.Parse(TextBox2.Text));
                cmd.Parameters.AddWithValue("@a3", TextBox3.Text);
                cmd.Parameters.AddWithValue("@a4", TextBox4.Text);
                cmd.Parameters.AddWithValue("@a5", TextBox9.Text);
                cmd.Parameters.AddWithValue("@a6", TextBox6.Text);
                cmd.Parameters.AddWithValue("@a9", TextBox10.Text);
                cmd.Parameters.AddWithValue("@a10", TextBox11.Text);
                cmd.Parameters.AddWithValue("@a11", TextBox12.Text);
                cmd.ExecuteNonQuery();
                //Response.Write("<script> alert('EMPLOYEE UPDATED SUCCESSFULLY') </script>");
                //Response.Redirect("~/Login.aspx");
                Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('EMPLOYEE UPDATED SUCCESSFULLY');window.location='HR_HOME.aspx';", true);          
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\prajw\\OneDrive\\Documents\\Visual Studio 2010\\Projects\\HRM\\HRM\\App_Data\\HRM.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            if (TextBox2.Text != "")
            {
                SqlCommand cmd = new SqlCommand("Select Emp_Name, Department, Designation, PhNo, Email, Availed_Leaves, Total_Leaves, Salary from EMPLOYEE_DETAILS where Emp_Id = @Id", con);
                cmd.Parameters.AddWithValue("@Id", int.Parse(TextBox2.Text));
                SqlDataReader da = cmd.ExecuteReader();
                while (da.Read())
                {
                    TextBox1.Text = da.GetValue(0).ToString();
                    TextBox3.Text = da.GetValue(1).ToString();
                    TextBox4.Text = da.GetValue(2).ToString();
                    TextBox9.Text = da.GetValue(3).ToString();
                    TextBox6.Text = da.GetValue(4).ToString();
                    TextBox10.Text = da.GetValue(5).ToString(); 
                    TextBox11.Text = da.GetValue(6).ToString();
                    TextBox12.Text = da.GetValue(7).ToString();
                }
            }
        }
    }
}