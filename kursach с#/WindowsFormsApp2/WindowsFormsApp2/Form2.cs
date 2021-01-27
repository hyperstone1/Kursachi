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
    public partial class Form2 : Form
    {
        public static string connectString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Database.mdb;";

        private OleDbConnection Connect;

        public Form2()
        {
            InitializeComponent();
            Connect = new OleDbConnection(connectString);
            Connect.Open();
        }

        private void Form2_FormClosing(object sender, FormClosingEventArgs e)
        {
            Connect.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string query = "SELECT id_uch, FIO_uch, phone_number FROM ucheniki ORDER BY id_uch";
            OleDbCommand command = new OleDbCommand(query, Connect);
            OleDbDataReader reader = command.ExecuteReader();
            listBox1.Items.Clear();
            while (reader.Read())
            {
                listBox1.Items.Add(reader[0].ToString() + " " + reader[1].ToString() + " " + reader[2].ToString() + " ");

            }
            reader.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text.Trim() == "" || textBox1.Text == null) 
            {
                MessageBox.Show("Поле пустое. Введите запись снова.");
                
            }
            else { 
            string query = $"INSERT INTO ucheniki (FIO_uch, phone_number) VALUES ('{textBox1.Text}', {Convert.ToInt32(textBox2.Text)})";
            OleDbCommand command = new OleDbCommand(query, Connect);
            command.ExecuteNonQuery();
            }

        }

        private void button3_Click(object sender, EventArgs e)
        {
            string query = $"DELETE FROM ucheniki WHERE id_uch = {Convert.ToInt32(textBox3.Text)}";
            OleDbCommand command = new OleDbCommand(query, Connect);
            command.ExecuteNonQuery();
        }


    }
 }
