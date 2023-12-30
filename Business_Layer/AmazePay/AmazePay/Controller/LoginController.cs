using AmazePay.Model;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Reflection;

namespace AmazePay.Controller
{
    //[Route("api/[controller]")]
    //[ApiController]
    //[RoutePrefix("api/Test")]
    public class LoginController : ControllerBase
    {
        private readonly IConfiguration _configuration;

        public LoginController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        [HttpPost]
        [Route("/Login")]
        [EnableCors("AllowOrigin")]
        public string Login(Login login)
        {
            string msg = string.Empty;
            try
            {
                string connectionString = "Data Source=LAPTOP-G1BA308T\\SQLEXPRESS;Initial Catalog=AmazePay;Integrated Security=True;Trust Server Certificate=True";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand cmd = new SqlCommand("usp_Login", connection);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Username", login.Username);
                    cmd.Parameters.AddWithValue("@Password", login.Password);
                    cmd.Parameters.AddWithValue("@Bankcode", login.Bankcode);
                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        msg = "Data Inserted";
                    }
                    else
                    {
                        msg = "Error For Inserted";
                    }
                    
                }
            }
            catch (Exception ex)
            {
                msg = ex.Message;
            }
            return msg;





        }
    }
}
