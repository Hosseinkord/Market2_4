using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace project.classes
{
    class Funcs
    {
        public static string strProv ="";// Properties.Settings.Default.shahrdariConnectionString; //"Data Source=.\\SQLEXPRESS;AttachDbFilename=" + System.Windows.Forms.Application.StartupPath + "\\DB\\MccDB64.mdf;Integrated Security=True;User Instance=True";

        /// <summary>
        /// Insert, Update, Delete
        /// </summary>
        /// <param name="strsql"></param>
        /// <returns></returns>
        public static bool setQuery(string strsql)
        {
            bool retValue = true;

            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();

            con.ConnectionString = strProv;

            cmd.Connection = con;
            cmd.CommandText = strsql;

            try
            {
                con.Open();

                cmd.ExecuteNonQuery();

                //con.Close();
            }
            catch (Exception)
            {
                retValue = false;
            }
            finally
            {
                con.Close();
            }

            return retValue;
        }

        /// <summary>
        /// Full data set 
        /// </summary>
        /// <param name="Dset"></param>
        /// <param name="strsql"></param>
        /// <param name="strTqbleName"></param>
        /// <returns></returns>
        public static bool Fuller(System.Data.DataSet Dset, string strsql, string strTableName)
        {
            bool retValue = true;
            Dset.Clear();

            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
            System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter();

            con.ConnectionString = strProv;

            da.SelectCommand = new System.Data.SqlClient.SqlCommand();
            da.SelectCommand.Connection = con;
            da.SelectCommand.CommandText = strsql;

            try
            {
                con.Open();

                da.Fill(Dset, strTableName);
            }
            catch (Exception)
            {
                retValue = false;
            }
            finally
            {
                con.Close();
            }

            return retValue;
        }

        /// <summary>
        /// return Max Value, if connection failed return -1
        /// </summary>
        /// <param name="strTableName"></param>
        /// <param name="strFld"></param>
        /// <returns></returns>
        public long MaxID(string strTableName, string strFld)
        {
            long maxID;

            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            System.Data.SqlClient.SqlDataReader dr;

            con.ConnectionString = strProv;

            cmd.Connection = con;
            cmd.CommandText = "SELECT max(" + strFld + ") AS [max] FROM " + strTableName;// "select  as [max] from " ;

            try
            {
                con.Open();

                dr = cmd.ExecuteReader();

                dr.Read();

                if (dr.HasRows)
                    maxID = Convert.ToInt64(dr["max"]);
                else
                    maxID = 1000;
            }
            catch (Exception)
            {
                maxID = -1;
            }
            finally
            {
                con.Close();
            }

            return maxID;
        }

        public static string Miladi2Shamsi(int yy, int mm, int dd, int bedate)
        {
            DateTime msdt = new DateTime(yy, mm, dd);
            System.Globalization.PersianCalendar pdate = new System.Globalization.PersianCalendar();
            int py, pm, pd, m;
            py = Convert.ToInt32(pdate.GetYear(msdt));
            pm = Convert.ToInt32(pdate.GetMonth(msdt));
            pd = Convert.ToInt32(pdate.GetDayOfMonth(msdt));
            m = Convert.ToInt32(pdate.GetDayOfWeek(msdt));
            string[] dname = new string[8];
            string[] mon = new string[13];
            string m2s = "";
            dname[6] = "شنبه";
            dname[0] = "يك شنبه";
            dname[1] = "دو شنبه";
            dname[2] = "سه شنبه";
            dname[3] = "چهار شنبه";
            dname[4] = "پنج شنبه";
            dname[5] = "جمعه";
            dname[7] = "";

            mon[1] = "فروردين";
            mon[2] = "ارديبهشت";
            mon[3] = "خرداد";
            mon[4] = "تير";
            mon[5] = "مرداد";
            mon[6] = "شهريور";
            mon[7] = "مهر";
            mon[8] = "آبان";
            mon[9] = "آذر";
            mon[10] = "دي";
            mon[11] = "بهمن";
            mon[12] = "اسفند";

            string spy = "", spm = "", spd = "";
            if (py < 10)
                spy = "0";
            if (pm < 10)
                spm = "0";
            if (pd < 10)
                spd = "0";
            spy += Convert.ToString(py);
            spm += Convert.ToString(pm);
            spd += Convert.ToString(pd);

            if (bedate == 1)
                m2s = spy + "/" + spm + "/" + spd;
            else if (bedate == 2)
                m2s = dname[m] + "   " + Convert.ToString(pd) + " " + mon[pm] + " " + Convert.ToString(py);
            else if (bedate == 3)
                m2s = Convert.ToString(py) + "." + Convert.ToString(pm) + "." + Convert.ToString(pd);
            else if (bedate == 4)
                m2s = spy + spm + spd;
            return m2s;
        }

        /// <summary>
        /// IF valid return Access Level, else retrun NULL
        /// </summary>
        /// <param name="US"></param>
        /// <param name="PW"></param>
        /// <returns></returns>
        public int Authenticate(string UN, string PW, ref string fname, ref string lname, ref long UserID)
        {
            int LvL = int.MaxValue;

            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            System.Data.SqlClient.SqlDataReader dr;

            con.ConnectionString = strProv;

            cmd.Connection = con;
            cmd.CommandText = "select * from tbl_user where user_us='" + UN + "'";

            try
            {
                con.Open();

                dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    if (Convert.ToString(dr["user_pw"]) == PW)
                    {
                        LvL = Convert.ToInt16(dr["user_lvl"]);
                        fname = Convert.ToString(dr["user_fname"]);
                        lname = Convert.ToString(dr["user_lname"]);
                        UserID = Convert.ToInt64(dr["user_UserID"]);
                    }
                }
            }
            catch (Exception)
            {
                LvL = int.MaxValue;
            }
            finally
            {
                con.Close();
            }

            return LvL;
        }

        public string getDigitStr(int keycode)
        {
            string retval = "";

            switch (keycode)
            {
                case 48:
                    retval = "0";
                    break;

                case 49:
                    retval = "1";
                    break;

                case 50:
                    retval = "2";
                    break;

                case 51:
                    retval = "3";
                    break;

                case 52:
                    retval = "4";
                    break;

                case 53:
                    retval = "5";
                    break;

                case 54:
                    retval = "6";
                    break;

                case 55:
                    retval = "7";
                    break;

                case 56:
                    retval = "8";
                    break;

                case 57:
                    retval = "9";
                    break;

                case 42:
                    retval = "*";
                    break;

                case 35:
                    retval = "#";
                    break;
            }

            return retval;
        }

        /// <summary>
        /// check user name and password, if user and pass exist return true
        /// </summary>
        /// <param name="strUN"></param>
        /// <param name="strPW"></param>
        /// <returns></returns>
        public bool chkExistUNandPW(string strUN, string strPW)
        {
            bool exist = false;

            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            System.Data.SqlClient.SqlDataReader dr;

            con.ConnectionString = strProv;

            cmd.Connection = con;
            cmd.CommandText = "select * from tbl_user where user_us='" + strUN + "'";

            try
            {
                con.Open();

                dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    if (Convert.ToString(dr["user_pw"]) == strPW)
                    {
                        exist = true;
                    }
                }
            }
            catch (Exception)
            {
                exist = true;
            }
            finally
            {
                con.Close();
            }

            return exist;
        }

        public int rowsCount(string strsql)
        {
            int counter = 0;

            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            System.Data.SqlClient.SqlDataReader dr;

            con.ConnectionString = strProv;

            cmd.Connection = con;
            cmd.CommandText = strsql;

            try
            {
                con.Open();

                dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    counter++;
                }
            }
            catch (Exception)
            {
                counter = 0;
            }
            finally
            {
                con.Close();
            }

            return counter;
        }

        /// <summary>
        /// return value of this column where rowsID=strRowno
        /// </summary>
        /// <param name="strTableName"></param>
        /// <param name="strColumnName"></param>
        /// <param name="strRowno">if this type is string you should send this parameter => 'strTest'</param>
        /// <returns></returns>
        public static string FieldValue(string strTableName, string strColumnName, string strRowColName, string strRowno)
        {
            string value = "";

            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            System.Data.SqlClient.SqlDataReader dr;

            con.ConnectionString = strProv;

            cmd.Connection = con;
            cmd.CommandText = "select " + strColumnName + " from " + strTableName + " where " + strRowColName + "=" + strRowno;

            try
            {
                con.Open();

                dr = cmd.ExecuteReader();

                dr.Read();
                value = Convert.ToString(dr[strColumnName]);
            }
            catch (Exception)
            {
                value = "";
            }
            finally
            {
                con.Close();
            }

            return value;
        }

        /// <summary>
        /// compute whether the date is betwean two date or no
        /// </summary>
        /// <param name="s1">from sal</param>
        /// <param name="s2">to sal</param>
        /// <param name="m1">from mah</param>
        /// <param name="m2">to mah</param>
        /// <param name="d3">calculate date</param>
        /// <returns></returns>
        public static bool checkdate(int s1, int s2, int m1, int m2, string d3)
        {
            string[] b = d3.Split('/');

            int s3 = int.Parse(b[0]);
            int m3 = int.Parse(b[1]);

            if (s3 > s1 && s3 < s2)
                return true;
            if (s1 == s2 && s1 == s3)
            {
                if (m3 >= m1 && m3 <= m2)
                    return true;
            }
            else
            {
                if (s3 == s1)
                {

                    if (m3 >= m1)
                        return true;
                }
                if (s3 == s2)
                {
                    //if (m1 <= m2)
                    //{
                    //    if (m3 >= m1 && m3 <= m2)
                    //        return true;
                    //}
                    //else
                    //{
                    if (m3 <= m2)
                        return true;
                    //}
                }
            }

            return false;
        }


        ////string[]dd="", "يک", "دو", "سه", "چهار", "پنج", "شش", "هفت", "هشت", "نه";
        //public static String[] s1 = new String("", "يک", "دو", "سه", "چهار", "پنج", "شش", "هفت", "هشت", "نه");
        //public static String[] s2 = new String("ده", "يازده", "دوازده", "سيزده", "چهارده", "پانزده", "شانزده", "هفده", "هجده", "نوزده");
        //public static String[] s3 = new String("", "", "بيست", "سي", "چهل", "پنجاه", "شصت", "هفتاد", "هشتاد", "نود");
        //public static String[] s4 = new String("", "صد", "دويست", "سيصد", "چهارصد", "پانصد", "ششصد", "هفتصد", "هشتصد", "نهصد");
        //public static string result = "";


        //public static void convert(double z)
        //{
        //    if (z == 0)
        //    {
        //        result = "صفر";
        //    }
        //    else
        //    {
        //        result = "";
        //        convert2(z);
        //    }

        //}

        //public static void convert2(double y)
        //{
        //    double bil, bghb, temp, bghm, mil, bghh, hez;
        //    if (y > 999999999 && y < 1000000000000)
        //    {
        //        bghb = (y % 1000000000);
        //        temp = y - bghb;
        //        bil = temp / 1000000000;
        //        convert3r(bil);
        //        result = result + " ميليارد";
        //        if (bghb != 0)
        //        {
        //            result = result + " و "; convert2(bghb);
        //        }
        //    }
        //    else if (y > 999999 && y <= 999999999)
        //    {
        //        bghm = (y % 1000000);
        //        temp = y - bghm;
        //        mil = temp / 1000000;
        //        convert3r(mil);
        //        result = result + " ميليون";
        //        if (bghm != 0)
        //        {
        //            result = result + " و ";
        //            convert2(bghm);
        //        }
        //    }
        //    else if (y > 999 && y <= 999999)
        //    {
        //        bghh = (y % 1000);
        //        temp = y - bghh;
        //        hez = temp / 1000;
        //        convert3r(hez);
        //        result = result + " هزار";
        //        if (bghh != 0)
        //        {
        //            result = result + " و ";
        //            convert2(bghh);
        //        }
        //    }
        //    else if (y <= 999)
        //        convert3r(y);
        //    else result = "";
        //}

        //public static string convert3r(double x)
        //{
        //    int bgh, sad, bgh2, dah, temp;
        //    bgh = (x % 100);
        //    temp = x - bgh;
        //    sad = temp / 100;
        //    if (bgh == 0)
        //    {
        //        result = result + s4[sad];
        //    }
        //    else
        //    {
        //        if (x > 100) result = result + s4[sad] + " و ";
        //        if (bgh < 10)
        //        {
        //            result = result + s1[bgh];
        //        }
        //        else if (bgh < 20)
        //        {
        //            bgh2 = (bgh % 10);
        //            result = result + s2[bgh2];
        //        }
        //        else
        //        {
        //            bgh2 = (bgh % 10);
        //            temp = bgh - bgh2;
        //            dah = temp / 10;
        //            if (bgh2 == 0)
        //            {
        //                result = result + s3[dah];
        //            }
        //            else
        //            {
        //                result = result + s3[dah] + " و " + s1[bgh2];
        //            }
        //        }
        //    }
        //}
    }

}
