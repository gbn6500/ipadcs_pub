using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace winForm
{
    public partial class Form1 : Form
    {
        Button btnTest;
        Label lblTest;

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            lblTest = new Label();
            lblTest.Location = new Point(200, 200);
            lblTest.Size = new Size(150, 100);
            lblTest.TextAlign = ContentAlignment.MiddleCenter;
            lblTest.Text = "0";
            lblTest.Font = new Font(lblTest.Font.OriginalFontName, 50);
            this.Controls.Add(lblTest);

            btnTest = new Button();
            btnTest.Location = new Point(200, 400);
            btnTest.Size = new Size(150,100);
            btnTest.Text = "inc";
            btnTest.Font = new Font(btnTest.Font.OriginalFontName, 50);
            btnTest.Click += new EventHandler(OnButton);
            this.Controls.Add(btnTest);
        }

        private void OnButton(object sender, EventArgs e)
        {
            int i = int.Parse(lblTest.Text);
            i++;
            lblTest.Text = i.ToString();
        }
    }
}
