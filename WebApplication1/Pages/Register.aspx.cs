using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Pages_Register : System.Web.UI.Page
{
    string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ajord\source\repos\WebApplication1\App_Data\KFurniture.mdf;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Clear();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand("UserAddOrEdit", sqlCon);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(hfUserID.Value == "" ? "0" : hfUserID.Value));
                sqlCmd.Parameters.AddWithValue("@First_Name", FirstName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Last_Name", LastName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@UserName", UserName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Email", Email.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Password", Password.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Phone", Phone.Text.Trim());
                sqlCmd.ExecuteNonQuery();
                Clear();
                SuccessMessage.Text = "Submited Successfully";


            }

    }
        void Clear()
        {
            FirstName.Text = LastName.Text = UserName.Text = Email.Text = Password.Text = Phone.Text = "";
            hfUserID.Value = "";
            SuccessMessage.Text = ErrorMessage.Text = "";
        }
    }
