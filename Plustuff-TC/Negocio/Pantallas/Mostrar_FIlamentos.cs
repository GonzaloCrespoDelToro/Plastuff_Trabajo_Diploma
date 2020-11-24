﻿using Modelo;
using Servicios;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Plustuff_TC.Negocio.Pantallas
{
    public partial class Mostrar_Filamentos : Form, IObserverIdioma
    {
        C2_Negocio.Filamentos _FIlamentos = new C2_Negocio.Filamentos();
        Servicios.SessionManager Sesion = Servicios.SessionManager.Getinstance;


        public Mostrar_Filamentos()
        {
            InitializeComponent();
        }

        private void Listar()
        {
            var ListaFilamentos = _FIlamentos.ListarTipoFilamento();
            GridViewFilamentos.DataSource = (from f in ListaFilamentos
                                             select new
                                             {
                                                 Material = f.Tipo,
                                                 Precio = f.Precio
                                             }).ToList();
        }

        private void Mostrar_Filamentos_Load(object sender, EventArgs e)
        {
            this.Listar();

            this.Traducir();
            Servicios.ManagerIdioma.Suscribir(this);

        }

        public void ActualizarIdioma(Idioma idioma)
        {
            this.Traducir();
        }

        private void Traducir()
        {
            Traductor traductor = new Traductor();
            Modelo.Formulario formulario = new Formulario();
            formulario.Nombre = "MostrarFilamento";
            var traducciones = traductor.ObtenerTraducciones(Sesion.Usuario.Idioma, formulario);
            if (traducciones.Any(t => t.Etiqueta == this.Name))
            {
                this.Text = traducciones.FirstOrDefault(t => t.Etiqueta == this.Name).Descripcion;
            }
            foreach (Control item in this.Controls)
            {
                if (traducciones.Any(t => t.Etiqueta == item.Name))
                {
                    item.Text = traducciones.FirstOrDefault(t => t.Etiqueta == item.Name).Descripcion;
                }

                TraducirControlesInternos(item, traducciones);
            }
        }

        private void TraducirControlesInternos(Control item, List<Traduccion> traducciones)
        {
            if (item is GroupBox)
            {
                foreach (Control subItem in item.Controls)
                {
                    if (traducciones.Any(t => t.Etiqueta == subItem.Name))
                    {
                        subItem.Text = traducciones.FirstOrDefault(t => t.Etiqueta == subItem.Name).Descripcion;
                    }

                    TraducirControlesInternos(subItem, traducciones);
                }
            }
        }

        private void btncerrar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnBaja_Click(object sender, EventArgs e)
        {
            Modelo.TipoFilamento tipoFilamento = new Modelo.TipoFilamento();
            if (GridViewFilamentos.SelectedCells.Count > 0 && GridViewFilamentos.SelectedCells.Count < 2)
            {
                int selectedrowindex = GridViewFilamentos.SelectedCells[0].RowIndex;
                DataGridViewRow selectedRow = GridViewFilamentos.Rows[selectedrowindex];
                string Tipo = Convert.ToString(selectedRow.Cells["Material"].Value);
                tipoFilamento.Tipo = Tipo;
                tipoFilamento = _FIlamentos.TraerTipoFilamentoPorTipo(tipoFilamento);

                if (_FIlamentos.Baja(tipoFilamento))
                {
                    MessageBox.Show("El Filamento se elimino con exito", "Eliminacion");
                    this.Listar();
                }
                else
                {
                    MessageBox.Show(this, "No se puedo dar de Baja a este filamento", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }

            }
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            Modelo.TipoFilamento tipoFilamento = new Modelo.TipoFilamento();
            if (GridViewFilamentos.SelectedCells.Count > 0 && GridViewFilamentos.SelectedCells.Count < 2)
            {
                int selectedrowindex = GridViewFilamentos.SelectedCells[0].RowIndex;
                DataGridViewRow selectedRow = GridViewFilamentos.Rows[selectedrowindex];
                string Tipo = Convert.ToString(selectedRow.Cells["Material"].Value);
                tipoFilamento.Tipo = Tipo;
                tipoFilamento = _FIlamentos.TraerTipoFilamentoPorTipo(tipoFilamento);

                Modificar_Filamento modificar_Filamento = new Modificar_Filamento();
                modificar_Filamento.TipoFilamento = tipoFilamento;
                modificar_Filamento.Show();

                this.Close();
            }
        }

        private void Mostrar_Filamentos_FormClosing(object sender, FormClosingEventArgs e)
        {
            Servicios.ManagerIdioma.Desuscribir(this);
        }
    }
}
