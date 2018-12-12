using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EzTriage
{
    public partial class PatientEncounter : System.Web.UI.Page
    {
        SqlConnection sqlCon =
            new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB; Initial Catalog=EZTriageDB;
                             Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        public void Clear()
        {
            hfPatientID.Value = "";
            txtFirstName.Text = txtLastName.Text = txtAddress.Text = "";
            lblSuccessMessage.Text = lblErrorMessage.Text = "";
            btnSave.Text = "Save";
            

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("PatientCreate", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@PatientID",(hfPatientID.Value==""?0:Convert.ToInt32(hfPatientID.Value)));
            sqlCmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@LastName", txtLastName.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@City", txtCity.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@State", txtState.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@PhoneNumber", txtPhoneNumber.Text.Trim());
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            Clear();
            if (hfPatientID.Value == "")
                lblSuccessMessage.Text = "Saved Patient Successfully";
        }
    }
}