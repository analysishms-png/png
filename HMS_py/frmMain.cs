//==========================================
// Main Form - HMS
// MDI Parent with Menu
//==========================================

using System;
using System.Drawing;
using System.Windows.Forms;
using System.Data;

namespace HMS.Forms
{
    public class frmMain : Form
    {
        //==========================================
        // Controls
        //==========================================
        private MenuStrip menuStrip;
        private ToolStrip toolStrip;
        private StatusStrip statusStrip;
        private Panel pnlHeader;
        
        private ToolStripStatusLabel lblUser;
        private ToolStripStatusLabel lblDate;
        private ToolStripStatusLabel lblCompany;
        private ToolStripStatusLabel lblStatus;
        
        private ToolStripButton btnLogout;
        private ToolStripButton btnExit;
        
        // Menu Items
        private MenuStrip mnuMain;
        
        //==========================================
        // Constructor
        //==========================================
        public frmMain()
        {
            InitializeComponent();
            LoadMenu();
            LoadUserInfo();
        }

        //==========================================
        // Initialize UI Components
        //==========================================
        private void InitializeComponent()
        {
            this.Text = "HMS - Hotel Management System";
            this.Size = new Size(1024, 768);
            this.StartPosition = FormStartPosition.CenterScreen;
            this.IsMdiContainer = true;
            this.BackColor = Color.FromArgb(240, 240, 245);
            this.Font = new Font("Segoe UI", 9);

            //==========================================
            // Header Panel
            //==========================================
            pnlHeader = new Panel();
            pnlHeader.Dock = DockStyle.Top;
            pnlHeader.Height = 60;
            pnlHeader.BackColor = Color.FromArgb(0, 102, 204);
            this.Controls.Add(pnlHeader);

            Label lblTitle = new Label();
            lblTitle.Text = "Hotel Management System";
            lblTitle.Font = new Font("Segoe UI", 18, FontStyle.Bold);
            lblTitle.ForeColor = Color.White;
            lblTitle.Location = new Point(20, 15);
            lblTitle.AutoSize = true;
            pnlHeader.Controls.Add(lblTitle);

            Label lblVersion = new Label();
            lblVersion.Text = "v2.4.25";
            lblVersion.Font = new Font("Segoe UI", 8);
            lblVersion.ForeColor = Color.FromArgb(200, 200, 200);
            lblVersion.Location = new Point(20, 40);
            lblVersion.AutoSize = true;
            pnlHeader.Controls.Add(lblVersion);

            //==========================================
            // Menu Strip
            //==========================================
            menuStrip = new MenuStrip();
            menuStrip.Dock = DockStyle.Top;
            menuStrip.BackColor = Color.FromArgb(250, 250, 250);
            this.Controls.Add(menuStrip);
            this.MainMenuStrip = menuStrip;

            //==========================================
            // Tool Strip
            //==========================================
            toolStrip = new ToolStrip();
            toolStrip.Dock = DockStyle.Top;
            toolStrip.BackColor = Color.FromArgb(245, 245, 245);
            toolStrip.ImageScalingSize = new Size(32, 32);
            this.Controls.Add(toolStrip);

            btnLogout = new ToolStripButton();
            btnLogout.Text = "Logout";
            btnLogout.ToolTipText = "Logout";
            btnLogout.Click += new EventHandler(btnLogout_Click);
            toolStrip.Items.Add(btnLogout);

            btnExit = new ToolStripButton();
            btnExit.Text = "Exit";
            btnExit.ToolTipText = "Exit Application";
            btnExit.Click += new EventHandler(btnExit_Click);
            toolStrip.Items.Add(btnExit);

            toolStrip.Items.Add(new ToolStripSeparator());

            ToolStripButton btnHome = new ToolStripButton();
            btnHome.Text = "Home";
            btnHome.Click += (s, e) => { ShowHome(); };
            toolStrip.Items.Add(btnHome);

            //==========================================
            // Status Strip
            //==========================================
            statusStrip = new StatusStrip();
            statusStrip.Dock = DockStyle.Bottom;
            this.Controls.Add(statusStrip);

            lblUser = new ToolStripStatusLabel();
            lblUser.Text = "User: ";
            statusStrip.Items.Add(lblUser);

            lblCompany = new ToolStripStatusLabel();
            lblCompany.Text = " | Company: ";
            statusStrip.Items.Add(lblCompany);

            lblDate = new ToolStripStatusLabel();
            lblDate.Text = " | Date: " + DateTime.Now.ToString("dd-MMM-yyyy");
            statusStrip.Items.Add(lblDate);

            lblStatus = new ToolStripStatusLabel();
            lblStatus.Text = " | Ready";
            statusStrip.Items.Add(lblStatus);
        }

        //==========================================
        // Load Menu from Database
        //==========================================
        private void LoadMenu()
        {
            try
            {
                // Get menu from Analysis.ini line 9
                string menuModules = "&Finance#Main Setup#Reservation#Front Office#House Keeping#Inventory#Point Of Sale#Banquet#Night Audit#HR && PayRoll#EPABX#&Messaging#Members Mgmt#Sale && Marketing#Mall Management";
                
                string[] modules = menuModules.Split('#');
                
                foreach (string module in modules)
                {
                    if (module.Trim() == "") continue;
                    
                    ToolStripMenuItem mnuItem = new ToolStripMenuItem();
                    mnuItem.Text = module.Replace("&", "");
                    mnuItem.Click += (s, e) => { OpenModule(module); };
                    
                    // Add to menu based on position
                    if (module.StartsWith("&"))
                    {
                        // Finance - first menu
                        if (menuStrip.Items.Count == 0)
                        {
                            menuStrip.Items.Add(new ToolStripMenuItem());
                        }
                        ((ToolStripMenuItem)menuStrip.Items[0]).DropDownItems.Add(mnuItem);
                    }
                    else
                    {
                        // Add to first dropdown
                        if (menuStrip.Items.Count == 0)
                        {
                            menuStrip.Items.Add(new ToolStripMenuItem());
                        }
                        ((ToolStripMenuItem)menuStrip.Items[0]).DropDownItems.Add(mnuItem);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error loading menu: " + ex.Message);
            }
        }

        //==========================================
        // Load User Info
        //==========================================
        private void LoadUserInfo()
        {
            lblUser.Text = "User: " + modLogin.gLoggedInUser;
            lblCompany.Text = " | Company: " + modLogin.gLoggedInCompany;
        }

        //==========================================
        // Open Module
        //==========================================
        private void OpenModule(string moduleName)
        {
            lblStatus.Text = "Opening " + moduleName + "...";
            
            try
            {
                Form childForm = null;
                
                switch (moduleName.Replace("&", "").ToLower())
                {
                    case "main setup":
                        childForm = new frmCompany();
                        break;
                    case "front office":
                        childForm = new frmGuestEntry();
                        break;
                    case "reservation":
                        childForm = new frmReservation();
                        break;
                    case "point of sale":
                        childForm = new frmPOS();
                        break;
                    case "inventory":
                        childForm = new frmInventory();
                        break;
                    case "banquet":
                        childForm = new frmBanquet();
                        break;
                    case "night audit":
                        childForm = new frmNightAudit();
                        break;
                    case "hr && payroll":
                        childForm = new frmPayroll();
                        break;
                    case "members mgmt":
                        childForm = new frmMember();
                        break;
                    case "finance":
                        childForm = new frmAccounts();
                        break;
                    default:
                        MessageBox.Show("Module: " + moduleName + " not implemented yet!");
                        return;
                }
                
                if (childForm != null)
                {
                    childForm.MdiParent = this;
                    childForm.Show();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error opening module: " + ex.Message);
            }
            
            lblStatus.Text = "Ready";
        }

        //==========================================
        // Show Home Screen
        //==========================================
        private void ShowHome()
        {
            // Close all child forms
            foreach (Form child in this.MdiChildren)
            {
                child.Close();
            }
            
            // Show welcome panel
            Panel pnlHome = new Panel();
            pnlHome.Dock = DockStyle.Fill;
            pnlHome.BackColor = Color.White;
            this.Controls.Add(pnlHome);
            
            Label lblWelcome = new Label();
            lblWelcome.Text = "Welcome to HMS";
            lblWelcome.Font = new Font("Segoe UI", 24, FontStyle.Bold);
            lblWelcome.ForeColor = Color.FromArgb(0, 102, 204);
            lblWelcome.Location = new Point(350, 200);
            lblWelcome.AutoSize = true;
            pnlHome.Controls.Add(lblWelcome);
            
            Label lblUserName = new Label();
            lblUserName.Text = "Logged in as: " + modLogin.gLoggedInUser;
            lblUserName.Font = new Font("Segoe UI", 12);
            lblUserName.Location = new Point(350, 250);
            lblUserName.AutoSize = true;
            pnlHome.Controls.Add(lblUserName);
        }

        //==========================================
        // Logout Button
        //==========================================
        private void btnLogout_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Are you sure you want to logout?", "Confirm Logout",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                this.Close();
                frmLogin loginForm = new frmLogin();
                loginForm.ShowDialog();
            }
        }

        //==========================================
        // Exit Button
        //==========================================
        private void btnExit_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Are you sure you want to exit?", "Confirm Exit",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Application.Exit();
            }
        }
    }
}