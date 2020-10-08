﻿using C2_Negocio;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Plustuff_TC.LogIn
{
    public partial class Login : Form
    {
        public Usuarios _Usuario = new Usuarios();
        public string Error_DVV = null;
        public string Error_DVH = null;
        public bool Admin = false;
        public Login()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            lblerror.Visible = false;

            if (!string.IsNullOrEmpty(txtpass.Text) || !string.IsNullOrEmpty(txtusu.Text))
            {
                Modelo.Usuario usuario = new Modelo.Usuario();
                usuario.Nombre = txtusu.Text;
                usuario.Pass = txtpass.Text;
                if (!_Usuario.Consistencia_Nombre(usuario)) //Consistencia de datos
                {
                    lblerror.Visible = true;
                    lblerror.Text = "Error de consistencia. Intente nuevamente";
                }
                else
                {
                    if (!string.IsNullOrEmpty(Error_DVH) || !string.IsNullOrEmpty(Error_DVH))
                    {
                        //Verificar si es administrador
                        return;
                    }

                    if (!_Usuario.Check_Usu(usuario))
                    {
                        lblerror.Visible = true;
                        lblerror.Text = "El usuario ingresado no existe";
                    }
                    else
                    {
                        int Verificar = _Usuario.Verificar_Usu_Pass(usuario);

                        if (Verificar != 1)
                        {
                            if(Verificar != 2)
                            {
                                lblerror.Visible = true;
                                lblerror.Text = "La contraseña es incorrecta";
                                return;
                            }

                            MessageBox.Show(this, "Tu usuario ha sido bloqueado" + Environment.NewLine + "Por favor contactarse con el Administrador",
                                                 "Usuario Bloqueado", MessageBoxButtons.OKCancel,
                                                 MessageBoxIcon.Warning,
                                                 MessageBoxDefaultButton.Button1, 0,
                                                 "mspaint.chm",
                                                 "mspaint.chm::/paint_brush.htm");
                        }
                        this.Hide();
                        Menu_Principal menu_Principal = new Menu_Principal();
                        menu_Principal.Show();
                    }   
                }
            }
            else
            {
                lblerror.Visible = true;
                lblerror.Text = "Debe completar todos los campos.";
            }
        }

        private void Login_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }

        private void Login_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Error_DVH) || !string.IsNullOrEmpty(Error_DVV))
            {
                lblerror.Text = "Hay error en los digitos, solo puede ingresar al sistema un administrador.";
                lblerror.Visible = true;
                Admin = true;
            }
        }
    }
}
