//==========================================
// Login Module for HMS (C# Port)
// Reads Analysis.ini and handles authentication
//==========================================

using System;
using System.IO;
using System.Data.SqlClient;

namespace HMS
{
    //==========================================
    // Login Configuration
    //==========================================
    public struct LoginConfig
    {
        public string Server;
        public string Database;
        public string CompanyCode;
        public string CompanyName;
        public string ReportsPath;
        public string TempPath;
        public string ImagePath;
        public string BackupPath;
        public string UserID;
        public string Password;
    }

    public class modLogin
    {
        public static LoginConfig gLoginConfig = new LoginConfig();
        public static string gLoggedInUser = "";
        public static string gLoggedInCompany = "";
        public static string gConnectionString = "";

        //==========================================
        // Read Analysis.ini file
        //==========================================
        public static bool ReadAnalysisIni()
        {
            string sFilePath = AppDomain.CurrentDomain.BaseDirectory + "HMS2425\\Analysis.ini";

            try
            {
                if (!File.Exists(sFilePath))
                {
                    System.Windows.Forms.MessageBox.Show("Analysis.ini not found!", 
                        "Error", System.Windows.Forms.MessageBoxButtons.OK, 
                        System.Windows.Forms.MessageBoxIcon.Exclamation);
                    return false;
                }

                string[] lines = File.ReadAllLines(sFilePath);
                
                foreach (string sLine in lines)
                {
                    string line = sLine.Trim();
                    if (line.StartsWith("[")) continue;

                    if (line.IndexOf("=") > 0)
                    {
                        string[] arrParts = line.Split('=');
                        string key = arrParts[0].Trim();
                        string value = arrParts[1].Trim();

                        switch (key)
                        {
                            case "1":
                                gLoginConfig.Server = value;
                                break;
                            case "2":
                                gLoginConfig.ReportsPath = value;
                                break;
                            case "3":
                                gLoginConfig.TempPath = value;
                                break;
                            case "5":
                                gLoginConfig.BackupPath = value;
                                break;
                            case "6":
                                gLoginConfig.Database = value;
                                break;
                            case "7":
                                gLoginConfig.CompanyCode = value;
                                break;
                            case "8":
                                gLoginConfig.CompanyName = value;
                                break;
                            case "10":
                                gLoginConfig.ImagePath = value;
                                break;
                        }
                    }
                }

                return true;
            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show("Error reading Analysis.ini: " + ex.Message,
                    "Error", System.Windows.Forms.MessageBoxButtons.OK,
                    System.Windows.Forms.MessageBoxIcon.Exclamation);
                return false;
            }
        }

        //==========================================
        // Get Company List from Database
        //==========================================
        public static string GetCompanyList()
        {
            string sCon = GetConnectionString();
            string sList = "";

            try
            {
                using (SqlConnection conn = new SqlConnection(sCon))
                {
                    conn.Open();

                    string query = "SELECT SubCode, Name FROM SubGroup WHERE GroupCode='C' ORDER BY Name";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            while (dr.Read())
                            {
                                sList += dr["SubCode"].ToString() + "|" + dr["Name"].ToString() + ",";
                            }
                        }
                    }
                }

                if (sList.EndsWith(","))
                {
                    sList = sList.Substring(0, sList.Length - 1);
                }

                return sList;
            }
            catch (Exception)
            {
                return "";
            }
        }

        //==========================================
        // Get Connection String
        //==========================================
        public static string GetConnectionString()
        {
            //Use SQL Server authentication
            string sCon = "Provider=SQLOLEDB;Data Source=" + gLoginConfig.Server + 
                         ";Initial Catalog=" + gLoginConfig.Database + 
                         ";User ID=sa;Password=sql2005;";

            gConnectionString = sCon;
            return sCon;
        }

        //==========================================
        // Get Company Code from Name
        //==========================================
        public static string GetCompanyCode(string sCompanyName)
        {
            string sCode = sCompanyName;

            if (sCompanyName.IndexOf("|") > 0)
            {
                string[] arrTemp = sCompanyName.Split('|');
                if (arrTemp.Length >= 1)
                {
                    sCode = arrTemp[0];
                }
            }

            return sCode;
        }

        //==========================================
        // Authenticate User
        //==========================================
        public static bool AuthenticateUser(string sUserCode, string sPassword)
        {
            string sCon = GetConnectionString();

            try
            {
                using (SqlConnection conn = new SqlConnection(sCon))
                {
                    conn.Open();

                    string query = "SELECT UserName, Password FROM UserMast WHERE UserCode=@UserCode";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@UserCode", sUserCode);

                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.Read())
                            {
                                string dbPassword = dr["Password"].ToString().Trim();

                                //Compare password (plain text or encrypted based on system)
                                if (dbPassword == sPassword)
                                {
                                    gLoggedInUser = dr["UserName"].ToString();
                                    return true;
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show("Error authenticating user: " + ex.Message,
                    "Error", System.Windows.Forms.MessageBoxButtons.OK,
                    System.Windows.Forms.MessageBoxIcon.Exclamation);
            }

            return false;
        }

        //==========================================
        // Validate Login
        //==========================================
        public static bool ValidateLogin(string sUserCode, string sPassword, ref string sMessage)
        {
            sMessage = "";

            //Check empty fields
            if (sUserCode.Trim() == "")
            {
                sMessage = "Please enter User Code";
                return false;
            }

            if (sPassword.Trim() == "")
            {
                sMessage = "Please enter Password";
                return false;
            }

            //Authenticate
            if (!AuthenticateUser(sUserCode, sPassword))
            {
                sMessage = "Invalid User or Password";
                return false;
            }

            return true;
        }

        //==========================================
        // Get User Rights
        //==========================================
        public static System.Data.DataTable GetUserRights(string sUserCode)
        {
            System.Data.DataTable dt = new System.Data.DataTable();
            string sCon = GetConnectionString();

            try
            {
                using (SqlConnection conn = new SqlConnection(sCon))
                {
                    conn.Open();

                    string query = "SELECT ModuleName, Rights FROM UserRights WHERE UserCode=@UserCode";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@UserCode", sUserCode);

                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            da.Fill(dt);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                System.Windows.Forms.MessageBox.Show("Error loading user rights: " + ex.Message,
                    "Error", System.Windows.Forms.MessageBoxButtons.OK,
                    System.Windows.Forms.MessageBoxIcon.Exclamation);
            }

            return dt;
        }
    }
}