﻿namespace TPF_Laboratorio_de_Programacion
{
    partial class formAgregar
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.lblMarca = new System.Windows.Forms.Label();
            this.lblColor = new System.Windows.Forms.Label();
            this.lblTalle = new System.Windows.Forms.Label();
            this.lblStock = new System.Windows.Forms.Label();
            this.blPrecio = new System.Windows.Forms.Label();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.btnCargar = new System.Windows.Forms.Button();
            this.lblNombre = new System.Windows.Forms.Label();
            this.errProv = new System.Windows.Forms.ErrorProvider(this.components);
            this.txtMarca = new TPF_Laboratorio_de_Programacion.ErrorTextBox();
            this.txtStock = new TPF_Laboratorio_de_Programacion.ErrorTextBox();
            this.txtColor = new TPF_Laboratorio_de_Programacion.ErrorTextBox();
            this.txtTalle = new TPF_Laboratorio_de_Programacion.ErrorTextBox();
            this.txtPrecio = new TPF_Laboratorio_de_Programacion.ErrorTextBox();
            this.txtNombre = new TPF_Laboratorio_de_Programacion.ErrorTextBox();
            ((System.ComponentModel.ISupportInitialize)(this.errProv)).BeginInit();
            this.SuspendLayout();
            // 
            // lblMarca
            // 
            this.lblMarca.AutoSize = true;
            this.lblMarca.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMarca.Location = new System.Drawing.Point(24, 59);
            this.lblMarca.Name = "lblMarca";
            this.lblMarca.Size = new System.Drawing.Size(57, 17);
            this.lblMarca.TabIndex = 1;
            this.lblMarca.Text = "Marca:";
            // 
            // lblColor
            // 
            this.lblColor.AutoSize = true;
            this.lblColor.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblColor.Location = new System.Drawing.Point(24, 87);
            this.lblColor.Name = "lblColor";
            this.lblColor.Size = new System.Drawing.Size(51, 17);
            this.lblColor.TabIndex = 4;
            this.lblColor.Text = "Color:";
            // 
            // lblTalle
            // 
            this.lblTalle.AutoSize = true;
            this.lblTalle.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTalle.Location = new System.Drawing.Point(24, 115);
            this.lblTalle.Name = "lblTalle";
            this.lblTalle.Size = new System.Drawing.Size(49, 17);
            this.lblTalle.TabIndex = 5;
            this.lblTalle.Text = "Talle:";
            // 
            // lblStock
            // 
            this.lblStock.AutoSize = true;
            this.lblStock.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblStock.Location = new System.Drawing.Point(24, 143);
            this.lblStock.Name = "lblStock";
            this.lblStock.Size = new System.Drawing.Size(53, 17);
            this.lblStock.TabIndex = 6;
            this.lblStock.Text = "Stock:";
            // 
            // blPrecio
            // 
            this.blPrecio.AutoSize = true;
            this.blPrecio.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.blPrecio.Location = new System.Drawing.Point(24, 171);
            this.blPrecio.Name = "blPrecio";
            this.blPrecio.Size = new System.Drawing.Size(59, 17);
            this.blPrecio.TabIndex = 7;
            this.blPrecio.Text = "Precio:";
            // 
            // btnCancelar
            // 
            this.btnCancelar.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancelar.Location = new System.Drawing.Point(27, 224);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(101, 29);
            this.btnCancelar.TabIndex = 7;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // btnCargar
            // 
            this.btnCargar.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCargar.Location = new System.Drawing.Point(239, 224);
            this.btnCargar.Name = "btnCargar";
            this.btnCargar.Size = new System.Drawing.Size(101, 29);
            this.btnCargar.TabIndex = 6;
            this.btnCargar.Text = "Cargar";
            this.btnCargar.UseVisualStyleBackColor = true;
            this.btnCargar.Click += new System.EventHandler(this.btnCargar_Click);
            // 
            // lblNombre
            // 
            this.lblNombre.AutoSize = true;
            this.lblNombre.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNombre.Location = new System.Drawing.Point(24, 31);
            this.lblNombre.Name = "lblNombre";
            this.lblNombre.Size = new System.Drawing.Size(69, 17);
            this.lblNombre.TabIndex = 17;
            this.lblNombre.Text = "Nombre:";
            // 
            // errProv
            // 
            this.errProv.BlinkStyle = System.Windows.Forms.ErrorBlinkStyle.NeverBlink;
            this.errProv.ContainerControl = this;
            // 
            // txtMarca
            // 
            this.txtMarca.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtMarca.Location = new System.Drawing.Point(110, 56);
            this.txtMarca.Name = "txtMarca";
            this.txtMarca.Size = new System.Drawing.Size(230, 22);
            this.txtMarca.TabIndex = 1;
            this.txtMarca.Validar = true;
            // 
            // txtStock
            // 
            this.txtStock.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtStock.Location = new System.Drawing.Point(110, 140);
            this.txtStock.Name = "txtStock";
            this.txtStock.Size = new System.Drawing.Size(230, 22);
            this.txtStock.TabIndex = 4;
            this.txtStock.Validar = true;
            // 
            // txtColor
            // 
            this.txtColor.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtColor.Location = new System.Drawing.Point(110, 84);
            this.txtColor.Name = "txtColor";
            this.txtColor.Size = new System.Drawing.Size(230, 22);
            this.txtColor.TabIndex = 2;
            this.txtColor.Validar = true;
            // 
            // txtTalle
            // 
            this.txtTalle.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtTalle.Location = new System.Drawing.Point(110, 112);
            this.txtTalle.Name = "txtTalle";
            this.txtTalle.Size = new System.Drawing.Size(230, 22);
            this.txtTalle.TabIndex = 3;
            this.txtTalle.Validar = true;
            // 
            // txtPrecio
            // 
            this.txtPrecio.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtPrecio.Location = new System.Drawing.Point(110, 168);
            this.txtPrecio.Name = "txtPrecio";
            this.txtPrecio.Size = new System.Drawing.Size(230, 22);
            this.txtPrecio.TabIndex = 5;
            this.txtPrecio.Validar = true;
            // 
            // txtNombre
            // 
            this.txtNombre.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtNombre.Location = new System.Drawing.Point(110, 28);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.Size = new System.Drawing.Size(230, 22);
            this.txtNombre.TabIndex = 0;
            this.txtNombre.Validar = true;
            // 
            // formAgregar
            // 
            this.AcceptButton = this.btnCargar;
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.btnCancelar;
            this.ClientSize = new System.Drawing.Size(367, 278);
            this.Controls.Add(this.txtNombre);
            this.Controls.Add(this.txtMarca);
            this.Controls.Add(this.txtStock);
            this.Controls.Add(this.txtColor);
            this.Controls.Add(this.txtTalle);
            this.Controls.Add(this.txtPrecio);
            this.Controls.Add(this.lblNombre);
            this.Controls.Add(this.btnCargar);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.blPrecio);
            this.Controls.Add(this.lblStock);
            this.Controls.Add(this.lblTalle);
            this.Controls.Add(this.lblColor);
            this.Controls.Add(this.lblMarca);
            this.MaximizeBox = false;
            this.MaximumSize = new System.Drawing.Size(385, 325);
            this.MinimizeBox = false;
            this.MinimumSize = new System.Drawing.Size(385, 325);
            this.Name = "formAgregar";
            this.Text = "Nuevo Producto";
            ((System.ComponentModel.ISupportInitialize)(this.errProv)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label lblMarca;
        private System.Windows.Forms.Label lblColor;
        private System.Windows.Forms.Label lblTalle;
        private System.Windows.Forms.Label lblStock;
        private System.Windows.Forms.Label blPrecio;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Button btnCargar;
        private System.Windows.Forms.Label lblNombre;
        public System.Windows.Forms.ErrorProvider errProv;
        private ErrorTextBox txtMarca;
        private ErrorTextBox txtStock;
        private ErrorTextBox txtColor;
        private ErrorTextBox txtTalle;
        private ErrorTextBox txtPrecio;
        private ErrorTextBox txtNombre;
        // private TPF_Laboratorio_de_Programacion.Classes.ErrorTextBox;
    }
}