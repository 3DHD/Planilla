using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Empleados
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("server=localhost; database=PrograI; integrated security = true");
            conn.Open();

            String codigoArea = txtCodigoArea.Text;
            String nombreArea = txtDescripcionArea.Text;
            DateTime fecha = DateTime.Now;

            String cadena = "insert into Area(area, descripcion, fecha_creacion) values(" + codigoArea + ", '" + nombreArea + "', '" + fecha.ToShortDateString() + "')";
            SqlCommand cmd = new SqlCommand(cadena, conn);
            cmd.ExecuteNonQuery();

            MessageBox.Show("Los datos se guardaron correctamente");
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtCodigoArea.Text = "";
            txtDescripcionArea.Text = "";
        }
        
        private void Form1_Load(object sender, EventArgs e)
        {

        }

    }
}
