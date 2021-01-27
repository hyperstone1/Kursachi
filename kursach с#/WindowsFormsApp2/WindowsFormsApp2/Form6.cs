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
    public partial class Form6 : Form
    {
        public static string connectString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Database.mdb;";

        private OleDbConnection Connect;

        public Form6()
        {
            InitializeComponent();
            Connect = new OleDbConnection(connectString);
            Connect.Open();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string query = "SELECT buhgalteria.[name_fakultativa], [otdel_kadrov].[FIO_prepoda], Sum(buhgalteria.[kolvo_zanyatij]) AS[SumOfkolvo_zanyatij], Sum(buhgalteria.Coast) AS SumOfCoast FROM ucheniki INNER JOIN([otdel_kadrov] INNER JOIN buhgalteria ON [otdel_kadrov].[id_prepoda] = buhgalteria.[id_prepoda]) ON ucheniki.[id_uch] = buhgalteria.[id_uch] GROUP BY buhgalteria.[name_fakultativa], [otdel_kadrov].[FIO_prepoda]";
        OleDbCommand command = new OleDbCommand(query, Connect);
            OleDbDataReader reader = command.ExecuteReader(); //извлекает данные из базы данных
            listBox1.Items.Clear();
            while (reader.Read())
            {
                listBox1.Items.Add(reader[0].ToString() + " " + reader[1].ToString() + " " + reader[2].ToString() + " " + reader[3].ToString());

            }
            reader.Close();
        }

        private void Form6_FormClosing(object sender, FormClosingEventArgs e)
        {
            Connect.Close();
        }

 

        private void button2_Click(object sender, EventArgs e)
        {
            string query = "SELECT buhgalteria.[name_fakultativa], [otdel_kadrov].[FIO_prepoda], Sum(buhgalteria.[kolvo_zanyatij]) AS[SumOfkolvo_zanyatij], Sum(buhgalteria.Coast) AS SumOfCoast FROM ucheniki INNER JOIN([otdel_kadrov] INNER JOIN buhgalteria ON [otdel_kadrov].[id_prepoda] = buhgalteria.[id_prepoda]) ON ucheniki.[id_uch] = buhgalteria.[id_uch] GROUP BY [otdel_kadrov].[FIO_prepoda], buhgalteria.[name_fakultativa] ";
            OleDbCommand command = new OleDbCommand(query, Connect);
            OleDbDataReader reader = command.ExecuteReader();
            listBox1.Items.Clear();
            while (reader.Read())
            {
                listBox1.Items.Add(reader[0].ToString() + " " + reader[1].ToString() + " " + reader[2].ToString() + " " + reader[3].ToString());

            }
            reader.Close();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            string query = "SELECT Sum(Vedomost1.[SumOfCoast]) FROM Vedomost1";
            OleDbCommand command = new OleDbCommand(query, Connect);
            OleDbDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                MessageBox.Show(("Общая стоимость всех платных факультативов составляет ") + reader[0].ToString() + " рублей " );

            }
            reader.Close();

        }

        private void button4_Click(object sender, EventArgs e)
        {
            Form8 form8 = new Form8();
            form8.Show();
        }
    }
}
