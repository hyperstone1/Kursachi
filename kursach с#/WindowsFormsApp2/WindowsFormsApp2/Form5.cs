using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.OleDb;

namespace WindowsFormsApp2
{
    public partial class Form5 : Form
    {
        public static string connectString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Database.mdb;";

        private OleDbConnection Connect;
        public Form5()
        {
            InitializeComponent();
            Connect = new OleDbConnection(connectString);
            Connect.Open();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string query = "SELECT ucheniki.[FIO_uch], buhgalteria.[name_fakultativa], Sum(buhgalteria.[kolvo_zanyatij]) AS[SumOfkolvo_zanyatij]FROM ucheniki INNER JOIN([otdel_kadrov] INNER JOIN buhgalteria ON [otdel_kadrov].[id_prepoda] = buhgalteria.[id_prepoda]) ON ucheniki.[id_uch] = buhgalteria.[id_uch]GROUP BY ucheniki.[FIO_uch], buhgalteria.[name_fakultativa]";
            OleDbCommand command = new OleDbCommand(query, Connect);
            OleDbDataReader reader = command.ExecuteReader();
            listBox1.Items.Clear();
            while (reader.Read())
            {
                listBox1.Items.Add(reader[0].ToString() + " " + reader[1].ToString() + " " + reader[2].ToString() + " ");

            }
            reader.Close();
        }

        private void Form5_FormClosing(object sender, FormClosingEventArgs e)
        {
            Connect.Close();
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            string query = "SELECT ucheniki.[FIO_uch], buhgalteria.[name_fakultativa], Sum(buhgalteria.[kolvo_zanyatij]) AS[SumOfkolvo_zanyatij]FROM ucheniki INNER JOIN([otdel_kadrov] INNER JOIN buhgalteria ON [otdel_kadrov].[id_prepoda] = buhgalteria.[id_prepoda]) ON ucheniki.[id_uch] = buhgalteria.[id_uch]GROUP BY buhgalteria.[name_fakultativa], ucheniki.[FIO_uch] ";
            OleDbCommand command = new OleDbCommand(query, Connect);
            OleDbDataReader reader = command.ExecuteReader();
            listBox1.Items.Clear();
            while (reader.Read())
            {
                listBox1.Items.Add(reader[0].ToString() + " " + reader[1].ToString() + " " + reader[2].ToString() + " ");

            }
            reader.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string query = "SELECT ucheniki.[FIO_uch], buhgalteria.[name_fakultativa], Sum(buhgalteria.[kolvo_zanyatij]) AS[SumOfkolvo_zanyatij]FROM ucheniki INNER JOIN([otdel_kadrov] INNER JOIN buhgalteria ON [otdel_kadrov].[id_prepoda] = buhgalteria.[id_prepoda]) ON ucheniki.[id_uch] = buhgalteria.[id_uch]GROUP BY buhgalteria.[name_fakultativa], ucheniki.[FIO_uch] ";
            OleDbCommand command = new OleDbCommand(query, Connect);
            OleDbDataReader reader = command.ExecuteReader();
            listBox1.Items.Clear();
            while (reader.Read())
            {
                listBox1.Items.Add(reader[0].ToString() + " " + reader[1].ToString() + " " + reader[2].ToString() + " ");

            }
            reader.Close();
        }
    }
    }
