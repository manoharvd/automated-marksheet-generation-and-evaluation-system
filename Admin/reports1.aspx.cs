using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class reports1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
    }
  
    protected void Button3_Click(object sender, EventArgs e)
    {
        //String mycon = "Data Source=HP-PC\\SQLEXPRESS; Initial Catalog=JobApplication; Integrated Security=True";

        String myquery = "Select * from Markssheets where RegNo=" + TextBox1.Text;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Panel1.Visible = true;
            // Label3.Text = "Data Found";
            Label1.Text = TextBox1.Text;
            Label2.Text = ds.Tables[0].Rows[0]["Name"].ToString();
            Label3.Text = ds.Tables[0].Rows[0]["Kan"].ToString();
            Label4.Text = ds.Tables[0].Rows[0]["Eng"].ToString();
            Label5.Text = ds.Tables[0].Rows[0]["Hindi"].ToString();
            Label6.Text = ds.Tables[0].Rows[0]["Maths"].ToString();
            Label7.Text = ds.Tables[0].Rows[0]["Science"].ToString();
            Label8.Text = ds.Tables[0].Rows[0]["SocialScience"].ToString();
            Label9.Text = ds.Tables[0].Rows[0]["Description"].ToString();

        }
        else
        {
            Label9.Text = "Roll Number Not Found";

        }
        con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=GridViewData.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        Panel1.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 10, 10, 0, 0);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();
    }
}