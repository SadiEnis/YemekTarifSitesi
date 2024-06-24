using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;

namespace YemekTarifiSite
{

    public class Database
    {
        private static Database db;
        private string _conString;
        private SqlConnection conn;

        private Database(string conString)
        {
            _conString = conString;
        }
        public static Database GetInstance()
        {
            if (db == null)
                db = new Database(@"Data Source=DESKTOP-1AE8KEC;Initial Catalog=dbo_YemekTarifi;Integrated Security=True;");
            return db;
        }
        public static Database GetInstance(string connectionString)
        {
            if (db == null)
                db = new Database(connectionString);
            return db;
        }
        public SqlConnection GetConnection()
        {
            if (conn == null || conn.State == System.Data.ConnectionState.Closed)
                conn = new SqlConnection(_conString);
            return conn;
        }
    }
}