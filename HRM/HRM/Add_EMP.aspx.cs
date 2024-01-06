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
    public partial class Add_EMP : System.Web.UI.Page
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
                string Gender = string.Empty;
                if (RadioButton1.Checked)
                {
                    Gender = "MALE";
                }
                else if (RadioButton2.Checked)
                {
                    Gender = "FEMALE";
                }

                con.Open();
                SqlCommand cmd = new SqlCommand("insert into EMPLOYEE_DETAILS values (@Emp_Name,@Emp_Id,@Department,@Designation,@PhNo,@Email,@Gender,@DOJ,@Availed_Leaves,@Total_Leaves,@Salary)", con);
                cmd.Parameters.AddWithValue("@Emp_Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Emp_Id", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Department", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Designation", TextBox4.Text);
                cmd.Parameters.AddWithValue("@PhNo", TextBox9.Text);
                cmd.Parameters.AddWithValue("@Email", TextBox6.Text);
                cmd.Parameters.AddWithValue("@Gender", Gender);
                cmd.Parameters.AddWithValue("@DOJ", TextBox8.Text);
                cmd.Parameters.AddWithValue("@Availed_Leaves", TextBox10.Text);
                cmd.Parameters.AddWithValue("@Total_Leaves", TextBox11.Text);
                cmd.Parameters.AddWithValue("@Salary", TextBox12.Text);
                cmd.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "alert('EMPLOYEE ADDED SUCCESSFULLY');window.location='HR_HOME.aspx';", true);          
                //Response.Write("<script> alert('EMPLOYEE ADDED SUCCESSFULLY') </script>");
                //Response.Redirect("~/Login.aspx");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}