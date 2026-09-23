//==========================================
// Login Form - HMS
// Complete UI with validation
//==========================================

using System;
using System.Drawing;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace HMS.Forms
{
    public class frmLogin : Form
    {
        //==========================================
        // Controls
        //==========================================
        private Label lblTitle;
        private Label lblUserCode;
        private Label lblPassword;
        private Label lblCompany;
        private Label lblServer;
        
        private TextBox txtUserCode;
        private TextBox txtPassword;
        private ComboBox cboCompany;
        private ComboBox cboServer;
        
        private Button btnLogin;
        private Button btnCancel;
        private Button btnExit;
        
        private Panel pnlHeader;
        private Panel pnlFooter;
        
        private PictureBox picLogo;
        
        private Label lblStatus;
        private ProgressBar prgStatus;

        //==========================================
        // Constructor
        //==========================================
        public frmLogin()
        {
            InitializeComponent();
            LoadConfig();
        }

        //==========================================
        // Initialize UI Components
        //==========================================
        private void InitializeComponent()
        {
            this.Text = "HMS - Login";
            this.Size = new Size(450, 400);
            this.StartPosition = FormStartPosition.CenterScreen;
            this.FormBorderStyle = FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.BackColor = Color.FromArgb(240, 240, 245);
            this.Font = new Font("Segoe UI", 10);

            //==========================================
            // Header Panel
            //==========================================
            pnlHeader = new Panel();
            pnlHeader.Dock = DockStyle.Top;
            pnlHeader.Height = 80;
            pnlHeader.BackColor = Color.FromArgb(0, 102, 204);
            this.Controls.Add(pnlHeader);

            // Title
            lblTitle = new Label();
            lblTitle.Text = "Hotel Management System";
            lblTitle.Font = new Font("Segoe UI", 20, FontStyle.Bold);
            lblTitle.ForeColor = Color.White;
            lblTitle.Location = new Point(80, 20);
            lblTitle.AutoSize = true;
            pnlHeader.Controls.Add(lblTitle);

            // Logo Picture
            picLogo = new PictureBox();
            picLogo.Location = new Point(20, 15);
            picLogo.Size = new Size(50, 50);
            picLogo.BackColor = Color.White;
            picLogo.SizeMode = PictureBoxSizeMode.StretchImage;
            pnlHeader.Controls.Add(picLogo);

            //==========================================
            // User Code
            //==========================================
            lblUserCode = new Label();
            lblUserCode.Text = "User Code :";
            lblUserCode.Location = new Point(50, 110);
            lblUserCode.AutoSize = true;
            this.Controls.Add(lblUserCode);

            txtUserCode = new TextBox();
            txtUserCode.Location = new Point(150, 107);
            txtUserCode.Size = new Size(230, 25);
            txtUserCode.Font = new Font("Segoe UI", 10);
            txtUserCode.CharacterCasing = CharacterCasing.Upper;
            txtUserCode.MaxLength = 20;
            this.Controls.Add(txtUserCode);

            //==========================================
            // Password
            //==========================================
            lblPassword = new Label();
            lblPassword.Text = "Password :";
            lblPassword.Location = new Point(50, 155);
            lblPassword.AutoSize = true;
            this.Controls.Add(lblPassword);

            txtPassword = new TextBox();
            txtPassword.Location = new Point(150, 152);
            txtPassword.Size = new Size(230, 25);
            txtPassword.Font = new Font("Segoe UI", 10);
            txtPassword.PasswordChar = '*';
            txtPassword.MaxLength = 20;
            this.Controls.Add(txtPassword);

            //==========================================
            // Company
            //==========================================
            lblCompany = new Label();
            lblCompany.Text = "Company :";
            lblCompany.Location = new Point(50, 200);
            lblCompany.AutoSize = true;
            this.Controls.Add(lblCompany);

            cboCompany = new ComboBox();
            cboCompany.Location = new Point(150, 197);
            cboCompany.Size = new Size(230, 25);
            cboCompany.DropDownStyle = ComboBoxStyle.DropDownList;
            this.Controls.Add(cboCompany);

            //==========================================
            // Server
            //==========================================
            lblServer = new Label();
            lblServer.Text = "Server :";
            lblServer.Location = new Point(50, 245);
            lblServer.AutoSize = true;
            this.Controls.Add(lblServer);

            cboServer = new ComboBox();
            cboServer.Location = new Point(150, 242);
            cboServer.Size = new Size(230, 25);
            cboServer.DropDownStyle = ComboBoxStyle.DropDownList;
            this.Controls.Add(cboServer);

            //==========================================
            // Buttons
            //==========================================
            btnLogin = new Button();
            btnLogin.Text = "Login";
            btnLogin.Location = new Point(150, 290);
            btnLogin.Size = new Size(100, 30);
            btnLogin.BackColor = Color.FromArgb(0, 123, 167);
            btnLogin.ForeColor = Color.White;
            btnLogin.FlatStyle = FlatStyle.Flat;
            btnLogin.Font = new Font("Segoe UI", 10, FontStyle.Bold);
            btnLogin.Click += new EventHandler(btnLogin_Click);
            this.Controls.Add(btnLogin);

            btnCancel = new Button();
            btnCancel.Text = "Cancel";
            btnCancel.Location = new Point(260, 290);
            btnCancel.Size = new Size(100, 30);
            btnCancel.BackColor = Color.Gray;
            btnCancel.ForeColor = Color.White;
            btnCancel.FlatStyle = FlatStyle.Flat;
            btnCancel.Font = new Font("Segoe UI", 10);
            btnCancel.Click += new EventHandler(btnCancel_Click);
            this.Controls.Add(btnCancel);

            btnExit = new Button();
            btnExit.Text = "Exit";
            btnExit.Location = new Point(150, 325);
            btnExit.Size = new Size(210, 25);
            btnExit.BackColor = Color.FromArgb(204, 0, 0);
            btnExit.ForeColor = Color.White;
            btnExit.FlatStyle = FlatStyle.Flat;
            btnExit.Click += new EventHandler(btnExit_Click);
            this.Controls.Add(btnExit);

            //==========================================
            // Status Bar
            //==========================================
            lblStatus = new Label();
            lblStatus.Text = "";
            lblStatus.Location = new Point(50, 355);
            lblStatus.Size = new Size(350, 20);
            lblStatus.ForeColor = Color.Red;
            lblStatus.Font = new Font("Segoe UI", 8);
            this.Controls.Add(lblStatus);

            //==========================================
            // Key Events
            //==========================================
            this.KeyPreview = true;
            this.KeyDown += new KeyEventHandler(frmLogin_KeyDown);
        }

        //==========================================
        // Load Configuration
        //==========================================
        private void LoadConfig()
        {
            try
            {
                // Read Analysis.ini
                if (!modLogin.ReadAnalysisIni())
                {
                    lblStatus.Text = "Error: Analysis.ini not found!";
                    return;
                }

                // Load companies
                LoadCompanies();

                // Load servers (default + local)
                cboServer.Items.Add(modLogin.gLoginConfig.Server);
                cboServer.Items.Add(".");
                cboServer.Items.Add("(local)");
                cboServer.Items.Add("localhost");
                cboServer.SelectedIndex = 0;

                // Set default company
                if (cboCompany.Items.Count > 0)
                {
                    cboCompany.SelectedIndex = 0;
                }

                lblStatus.Text = "Ready";
            }
            catch (Exception ex)
            {
                lblStatus.Text = "Error: " + ex.Message;
            }
        }

        //==========================================
        // Load Companies from Database
        //==========================================
        private void LoadCompanies()
        {
            try
            {
                string companyList = modLogin.GetCompanyList();
                
                if (companyList == "")
                {
                    // Use default from config
                    cboCompany.Items.Add(modLogin.gLoginConfig.CompanyName);
                    return;
                }

                string[] companies = companyList.Split(',');
                foreach (string comp in companies)
                {
                    if (comp.Trim() != "")
                    {
                        cboCompany.Items.Add(comp.Trim());
                    }
                }
            }
            catch (Exception ex)
            {
                lblStatus.Text = "Error loading companies: " + ex.Message;
            }
        }

        //==========================================
        // Login Button Click
        //==========================================
        private void btnLogin_Click(object sender, EventArgs e)
        {
            string userCode = txtUserCode.Text.Trim();
            string password = txtPassword.Text;
            string message = "";

            lblStatus.Text = "Validating...";
            this.Refresh();

            try
            {
                // Update server if changed
                if (cboServer.SelectedIndex > 0)
                {
                    modLogin.gLoginConfig.Server = cboServer.Text;
                }

                // Validate login
                if (modLogin.ValidateLogin(userCode, password, ref message))
                {
                    lblStatus.Text = "Login Successful!";
                    lblStatus.ForeColor = Color.Green;

                    // Store logged in user
                    modLogin.gLoggedInCompany = cboCompany.Text;

                    // Open main form
                    this.Hide();
                    frmMain mainForm = new frmMain();
                    mainForm.ShowDialog();
                    this.Close();
                }
                else
                {
                    lblStatus.Text = message;
                    lblStatus.ForeColor = Color.Red;
                    
                    // Shake effect
                    ShakeForm();
                }
            }
            catch (Exception ex)
            {
                lblStatus.Text = "Error: " + ex.Message;
                lblStatus.ForeColor = Color.Red;
            }
        }

        //==========================================
        // Cancel Button Click
        //==========================================
        private void btnCancel_Click(object sender, EventArgs e)
        {
            txtUserCode.Text = "";
            txtPassword.Text = "";
            lblStatus.Text = "";
            txtUserCode.Focus();
        }

        //==========================================
        // Exit Button Click
        //==========================================
        private void btnExit_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Are you sure you want to exit?", "Confirm Exit",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Application.Exit();
            }
        }

        //==========================================
        // Key Down Event
        //==========================================
        private void frmLogin_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnLogin_Click(sender, e);
            }
            else if (e.KeyCode == Keys.Escape)
            {
                btnExit_Click(sender, e);
            }
        }

        //==========================================
        // Shake Form (Error Effect)
        //==========================================
        private void ShakeForm()
        {
            Random rnd = new Random();
            for (int i = 0; i < 10; i++)
            {
                this.Location = new Point(
                    this.Location.X + rnd.Next(-5, 5),
                    this.Location.Y + rnd.Next(-5, 5)
                );
                System.Threading.Thread.Sleep(20);
            }
            this.Location = new Point(
                (Screen.PrimaryScreen.WorkingArea.Width - this.Width) / 2,
                (Screen.PrimaryScreen.WorkingArea.Height - this.Height) / 2
            );
        }
    }
}