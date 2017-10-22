using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Inventory"].ConnectionString);
            debug.Text = "here";
            try
            {
                con.Open();

                string query = "select id from Inventory where remaining < threshold";
                SqlCommand cmd = new SqlCommand(query, con);

                //SqlDataReader rd = cmd.ExecuteReader();
                DataTable dt = new DataTable();

                SqlDataAdapter adap = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adap.Fill(ds, "Inventory");

                //dt.Load(rd);
                gv.DataSource = ds;
                gv.DataBind();
            }
            catch (Exception excep)
            {
                debug.Text = excep.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
}