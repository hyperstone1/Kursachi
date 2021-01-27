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
    public partial class Form3 : Form
    { 
        public static string connectString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Database.mdb;";

        private OleDbConnection Connect1;
    
        public Form3()
        {
            InitializeComponent();
            Connect1 = new OleDbConnection(connectString);
            Connect1.Open();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string query = "SELECT id_bug, id_prepoda, id_uch, id_fakultativa, name_fakultativa, coast, data_provedeniya, kolvo_zanyatij, ocenka FROM buhgalteria ORDER BY id_bug";
            OleDbCommand command = new OleDbCommand(query, Connect1);
            OleDbDataReader reader = command.ExecuteReader();
            listBox1.Items.Clear();
            while (reader.Read())
            {
                listBox1.Items.Add(reader[0].ToString() + " " + reader[1].ToString() + " " + reader[2].ToString() + " " + reader[3].ToString() + " " + reader[4].ToString() + " " + reader[5].ToString() + " " + reader[6].ToString() + " " + reader[7].ToString() + " " + reader[8].ToString() );

            }
            reader.Close();
        }

        private void Form3_FormClosing(object sender, FormClosingEventArgs e)
        {
            Connect1.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DateTime data1 = new DateTime();
            data1 = DateTime.Parse(textBox7.Text);
            string query = $"INSERT INTO buhgalteria (id_prepoda, id_uch, id_fakultativa, name_fakultativa, coast, data_provedeniya, kolvo_zanyatij, ocenka) VALUES (@id_prepoda, @id_uch, @id_fakultativa, @name_fakultativa, @coast, @data_provedeniya, @kolvo_zanyatij, @ocenka)";
            OleDbCommand command = new OleDbCommand(query, Connect1);
            command.Parameters.Add("@id_prepoda", OleDbType.VarChar).Value = Convert.ToInt32(textBox2.Text);
            command.Parameters.Add("@id_uch", OleDbType.VarChar).Value = Convert.ToInt32(textBox3.Text);
            command.Parameters.Add("@id_fakultativa", OleDbType.VarChar).Value = Convert.ToInt32(textBox4.Text);
            command.Parameters.Add("@name_fakultativa", OleDbType.VarChar).Value = textBox5.Text;
            command.Parameters.Add("@coast", OleDbType.VarChar).Value = Convert.ToInt32(textBox6.Text);
            command.Parameters.Add("@data_provedeniya", OleDbType.Date).Value = data1;
            command.Parameters.Add("@kolvo_zanyatij", OleDbType.VarChar).Value = Convert.ToInt32(textBox8.Text);
            command.Parameters.Add("@ocenka", OleDbType.VarChar).Value = Convert.ToInt32(textBox9.Text);
            command.ExecuteNonQuery();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            string query = $"DELETE FROM buhgalteria WHERE id_bug = {Convert.ToInt32(textBox1.Text)}";
            OleDbCommand command = new OleDbCommand(query, Connect1);
            command.ExecuteNonQuery();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            string query = $"UPDATE buhgalteria SET coast = {Convert.ToInt32(textBox10.Text)} WHERE id_bug={Convert.ToInt32(textBox11.Text)}";
            OleDbCommand command = new OleDbCommand(query, Connect1);
            command.ExecuteNonQuery();

        }
    }
}
