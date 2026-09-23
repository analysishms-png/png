//==========================================
// Company Master Form
// Main Setup > Company
//==========================================

using System;
using System.Drawing;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace HMS.Forms
{
    public class frmCompany : Form
    {
        //==========================================
        // Controls
        //==========================================
        private DataGridView dgvCompany;
        private Panel pnlTop;
        private Panel pnlBottom;
        
        private Button btnAdd;
        private Button btnEdit;
        private Button btnDelete;
        private Button btnSave;
        private Button btnCancel;
        private Button btnClose;
        
        private TextBox txtCode;
        private TextBox txtName;
        private TextBox txtAddress;
        private TextBox txtCity;
        private TextBox txtPhone;
        private TextBox txtEmail;
        private TextBox txtGST;
        private TextBox txtPAN;
        
        private Label lblCode;
        private Label lblName;
        private Label lblAddress;
        private Label lblCity;
        private Label lblPhone;
        private Label lblEmail;
        private Label lblGST;
        private Label lblPAN;
        
        private ComboBox cboStatus;
        private Label lblStatus;
        
        private bool isEdit = false;

        //==========================================
        // Constructor
        //==========================================
        public frmCompany()
        {
            this.Text = "Company Master";
            this.Size = new Size(800, 500);
            this.StartPosition = FormStartPosition.CenterParent;
            this.BackColor = Color.FromArgb(240, 240, 245);
            
            InitializeComponent();
            LoadCompany();
        }

        //==========================================
        // Initialize Components
        //==========================================
        private void InitializeComponent()
        {
            // Top Panel
            pnlTop = new Panel();
            pnlTop.Dock = DockStyle.Top;
            pnlTop.Height = 200;
            pnlTop.BackColor = Color.White;
            pnlTop.Padding = new Padding(10);
            this.Controls.Add(pnlTop);

            int yPos = 20;
            int labelX = 20;
            int textX = 120;
            int width = 200;

            // Code
            lblCode = new Label(); lblCode.Text = "Company Code :";
            lblCode.Location = new Point(labelX, yPos); lblCode.AutoSize = true;
            pnlTop.Controls.Add(lblCode);

            txtCode = new TextBox();
            txtCode.Location = new Point(textX, yPos); txtCode.Size = new Size(80, 25);
            txtCode.MaxLength = 10;
            pnlTop.Controls.Add(txtCode);

            // Name
            yPos += 35;
            lblName = new Label(); lblName.Text = "Company Name :";
            lblName.Location = new Point(labelX, yPos); lblName.AutoSize = true;
            pnlTop.Controls.Add(lblName);

            txtName = new TextBox();
            txtName.Location = new Point(textX, yPos); txtName.Size = new Size(width, 25);
            txtName.MaxLength = 100;
            pnlTop.Controls.Add(txtName);

            // Address
            yPos += 35;
            lblAddress = new Label(); lblAddress.Text = "Address :";
            lblAddress.Location = new Point(labelX, yPos); lblAddress.AutoSize = true;
            pnlTop.Controls.Add(lblAddress);

            txtAddress = new TextBox();
            txtAddress.Location = new Point(textX, yPos); txtAddress.Size = new Size(width, 25);
            txtAddress.MaxLength = 200;
            pnlTop.Controls.Add(txtAddress);

            // City
            yPos += 35;
            lblCity = new Label(); lblCity.Text = "City :";
            lblCity.Location = new Point(labelX, yPos); lblCity.AutoSize = true;
            pnlTop.Controls.Add(lblCity);

            txtCity = new TextBox();
            txtCity.Location = new Point(textX, yPos); txtCity.Size = new Size(100, 25);
            txtCity.MaxLength = 50;
            pnlTop.Controls.Add(txtCity);

            // Phone
            yPos += 35;
            lblPhone = new Label(); lblPhone.Text = "Phone :";
            lblPhone.Location = new Point(labelX, yPos); lblPhone.AutoSize = true;
            pnlTop.Controls.Add(lblPhone);

            txtPhone = new TextBox();
            txtPhone.Location = new Point(textX, yPos); txtPhone.Size = new Size(100, 25);
            txtPhone.MaxLength = 20;
            pnlTop.Controls.Add(txtPhone);

            // Email
            yPos += 35;
            lblEmail = new Label(); lblEmail.Text = "Email :";
            lblEmail.Location = new Point(labelX, yPos); lblEmail.AutoSize = true;
            pnlTop.Controls.Add(lblEmail);

            txtEmail = new TextBox();
            txtEmail.Location = new Point(textX, yPos); txtEmail.Size = new Size(width, 25);
            txtEmail.MaxLength = 100;
            pnlTop.Controls.Add(txtEmail);

            // GST
            yPos += 35;
            lblGST = new Label(); lblGST.Text = "GST No :";
            lblGST.Location = new Point(labelX, yPos); lblGST.AutoSize = true;
            pnlTop.Controls.Add(lblGST);

            txtGST = new TextBox();
            txtGST.Location = new Point(textX, yPos); txtGST.Size = new Size(100, 25);
            txtGST.MaxLength = 20;
            pnlTop.Controls.Add(txtGST);

            // PAN
            yPos += 35;
            lblPAN = new Label(); lblPAN.Text = "PAN No :";
            lblPAN.Location = new Point(labelX, yPos); lblPAN.AutoSize = true;
            pnlTop.Controls.Add(lblPAN);

            txtPAN = new TextBox();
            txtPAN.Location = new Point(textX, yPos); txtPAN.Size = new Size(100, 25);
            txtPAN.MaxLength = 10;
            pnlTop.Controls.Add(txtPAN);

            // Status
            yPos += 35;
            lblStatus = new Label(); lblStatus.Text = "Status :";
            lblStatus.Location = new Point(labelX, yPos); lblStatus.AutoSize = true;
            pnlTop.Controls.Add(lblStatus);

            cboStatus = new ComboBox();
            cboStatus.Location = new Point(textX, yPos); cboStatus.Size = new Size(100, 25);
            cboStatus.Items.AddRange(new string[] { "Active", "Inactive" });
            cboStatus.SelectedIndex = 0;
            pnlTop.Controls.Add(cboStatus);

            // Bottom Panel
            pnlBottom = new Panel();
            pnlBottom.Dock = DockStyle.Bottom;
            pnlBottom.Height = 40;
            pnlBottom.BackColor = Color.FromArgb(245, 245, 245);
            this.Controls.Add(pnlBottom);

            int btnX = 20;
            int btnW = 80;

            btnAdd = new Button(); btnAdd.Text = "Add";
            btnAdd.Location = new Point(btnX, 5); btnAdd.Size = new Size(btnW, 30);
            btnAdd.Click += (s, e) => { ClearFields(); isEdit = false; };
            pnlBottom.Controls.Add(btnAdd);

            btnEdit = new Button(); btnEdit.Text = "Edit";
            btnEdit.Location = new Point(btnX + 90, 5); btnEdit.Size = new Size(btnW, 30);
            btnEdit.Click += (s, e) => { isEdit = true; };
            pnlBottom.Controls.Add(btnEdit);

            btnDelete = new Button(); btnDelete.Text = "Delete";
            btnDelete.Location = new Point(btnX + 180, 5); btnDelete.Size = new Size(btnW, 30);
            btnDelete.Click += new EventHandler(btnDelete_Click);
            pnlBottom.Controls.Add(btnDelete);

            btnSave = new Button(); btnSave.Text = "Save";
            btnSave.Location = new Point(btnX + 270, 5); btnSave.Size = new Size(btnW, 30);
            btnSave.BackColor = Color.FromArgb(0, 123, 167);
            btnSave.ForeColor = Color.White;
            btnSave.Click += new EventHandler(btnSave_Click);
            pnlBottom.Controls.Add(btnSave);

            btnCancel = new Button(); btnCancel.Text = "Cancel";
            btnCancel.Location = new Point(btnX + 360, 5); btnCancel.Size = new Size(btnW, 30);
            btnCancel.Click += (s, e) => { LoadCompany(); isEdit = false; };
            pnlBottom.Controls.Add(btnCancel);

            btnClose = new Button(); btnClose.Text = "Close";
            btnClose.Location = new Point(btnX + 450, 5); btnClose.Size = new Size(btnW, 30);
            btnClose.Click += (s, e) => { this.Close(); };
            pnlBottom.Controls.Add(btnClose);

            // Data Grid
            dgvCompany = new DataGridView();
            dgvCompany.Dock = DockStyle.Fill;
            dgvCompany.ReadOnly = true;
            dgvCompany.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dgvCompany.DoubleClick += (s, e) => { LoadSelectedRow(); };
            this.Controls.Add(dgvCompany);
            pnlBottom.SendToBack();
        }

        //==========================================
        // Load Company Data
        //==========================================
        private void LoadCompany()
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(modLogin.GetConnectionString()))
                {
                    conn.Open();
                    
                    string query = "SELECT SubCode AS Code, Name, Address, City, Phone, Email, GSTNo, PANNo, ActiveYN AS Status " +
                                "FROM SubGroup WHERE GroupCode='C' ORDER BY Name";
                    
                    SqlDataAdapter da = new SqlDataAdapter(query, conn);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    
                    dgvCompany.DataSource = dt;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error loading company: " + ex.Message);
            }
        }

        //==========================================
        // Clear Fields
        //==========================================
        private void ClearFields()
        {
            txtCode.Text = "";
            txtName.Text = "";
            txtAddress.Text = "";
            txtCity.Text = "";
            txtPhone.Text = "";
            txtEmail.Text = "";
            txtGST.Text = "";
            txtPAN.Text = "";
            cboStatus.SelectedIndex = 0;
            txtCode.Focus();
        }

        //==========================================
        // Load Selected Row
        //==========================================
        private void LoadSelectedRow()
        {
            if (dgvCompany.CurrentRow != null)
            {
                txtCode.Text = dgvCompany.CurrentRow.Cells["Code"].Value.ToString();
                txtName.Text = dgvCompany.CurrentRow.Cells["Name"].Value.ToString();
                txtAddress.Text = dgvCompany.CurrentRow.Cells["Address"].Value.ToString();
                txtCity.Text = dgvCompany.CurrentRow.Cells["City"].Value.ToString();
                txtPhone.Text = dgvCompany.CurrentRow.Cells["Phone"].Value.ToString();
                txtEmail.Text = dgvCompany.CurrentRow.Cells["Email"].Value.ToString();
                txtGST.Text = dgvCompany.CurrentRow.Cells["GSTNo"].Value.ToString();
                txtPAN.Text = dgvCompany.CurrentRow.Cells["PANNo"].Value.ToString();
                cboStatus.Text = dgvCompany.CurrentRow.Cells["Status"].Value.ToString();
                isEdit = true;
            }
        }

        //==========================================
        // Save Button
        //==========================================
        private void btnSave_Click(object sender, EventArgs e)
        {
            if (txtCode.Text.Trim() == "")
            {
                MessageBox.Show("Please enter Company Code!");
                txtCode.Focus();
                return;
            }
            if (txtName.Text.Trim() == "")
            {
                MessageBox.Show("Please enter Company Name!");
                txtName.Focus();
                return;
            }

            try
            {
                using (SqlConnection conn = new SqlConnection(modLogin.GetConnectionString()))
                {
                    conn.Open();
                    
                    string query;
                    if (isEdit)
                    {
                        query = "UPDATE SubGroup SET Name=@Name, Address=@Address, City=@City, Phone=@Phone, " +
                               "Email=@Email, GSTNo=@GST, PANNo=@PAN, ActiveYN=@Status " +
                               "WHERE SubCode=@Code AND GroupCode='C'";
                    }
                    else
                    {
                        query = "INSERT INTO SubGroup (SubCode, GroupCode, Name, Address, City, Phone, Email, GSTNo, PANNo, ActiveYN) " +
                               "VALUES (@Code, 'C', @Name, @Address, @City, @Phone, @Email, @GST, @PAN, @Status)";
                    }
                    
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@Code", txtCode.Text.Trim());
                    cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                    cmd.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
                    cmd.Parameters.AddWithValue("@City", txtCity.Text.Trim());
                    cmd.Parameters.AddWithValue("@Phone", txtPhone.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@GST", txtGST.Text.Trim());
                    cmd.Parameters.AddWithValue("@PAN", txtPAN.Text.Trim());
                    cmd.Parameters.AddWithValue("@Status", cboStatus.Text);
                    
                    cmd.ExecuteNonQuery();
                    
                    MessageBox.Show("Company saved successfully!");
                    LoadCompany();
                    ClearFields();
                    isEdit = false;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error saving company: " + ex.Message);
            }
        }

        //==========================================
        // Delete Button
        //==========================================
        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (txtCode.Text.Trim() == "") return;
            
            if (MessageBox.Show("Are you sure you want to delete this company?", "Confirm Delete",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                try
                {
                    using (SqlConnection conn = new SqlConnection(modLogin.GetConnectionString()))
                    {
                        conn.Open();
                        
                        string query = "DELETE FROM SubGroup WHERE SubCode=@Code AND GroupCode='C'";
                        SqlCommand cmd = new SqlCommand(query, conn);
                        cmd.Parameters.AddWithValue("@Code", txtCode.Text.Trim());
                        cmd.ExecuteNonQuery();
                        
                        MessageBox.Show("Company deleted successfully!");
                        LoadCompany();
                        ClearFields();
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error deleting company: " + ex.Message);
                }
            }
        }
    }
}