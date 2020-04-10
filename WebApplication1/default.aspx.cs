using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ajord\source\repos\WebApplication1\App_Data\KFurniture.mdf;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Admin.Checked == true)
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                string query = " SELECT COUNT(1) FROM Form Where UserName =@UserName AND Password=@Password AND isAdmin=@isAdmin";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@UserName", UserName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Password", Password.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@isAdmin", isAdmin.Text.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());

                if (count == 1)
                {
                    Response.Redirect("~/Pages/AddEditDelete.aspx");
                }

                else if (count == 0)
                {
                    ErrorMessage.Text = "You are not registered as Administrator";
                }
            }
        }
        else
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                string query = " SELECT COUNT(1) FROM Form Where UserName =@UserName AND Password=@Password";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@UserName", UserName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Password", Password.Text.Trim());               
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                Clear();
                if (count == 1)
                {
                    Session["UserName2"] = UserName.Text.Trim();
                    Go();
                }

                else if (count == 0)
                {
                    ErrorMessage.Text = "You are not registered. Please go to Register.";
                }
            }
        }
    }
    void Go() {        
            SuccessMessage.Text = "Hello " + UserName.Text + ".";
         }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        SuccessMessage.Text = "Bye " + Session["UserName"] + ".";
    }

    void Clear()
    {
        
        Password.Text = "";
        SuccessMessage.Text = "";
        ErrorMessage.Text = "";
    }


    protected void Admin_CheckedChanged(object sender, EventArgs e)
    {
       
    }
}
