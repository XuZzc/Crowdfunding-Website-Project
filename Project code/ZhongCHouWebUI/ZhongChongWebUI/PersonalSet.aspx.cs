using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;
using System.Xml;
namespace ZhongChouWebUI
{
    public partial class PersonalSet : System.Web.UI.Page
    {
        public static string Accounts = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["userName"] != null)
                {
                    Accounts = Request.Cookies["userName"].Value;
                }
                loads(Accounts);
                BindProvince();
            }
        }
        //加载信息
        void loads(string Accounts)
        {
            PersonalSelectBLL usb = new PersonalSelectBLL();
            this.Phone.Text = usb.PersonalSelectedBLL(Accounts)[0].Phone;
            this.UserName.Text = usb.PersonalSelectedBLL(Accounts)[0].UserName;
            string sex = usb.PersonalSelectedBLL(Accounts)[0].Gender.ToString().Trim();
            if (sex == "男")
            {
                this.RadioButton1.Checked = true;
            }
            else
            {
                this.RadioButton2.Checked = true;
            }

            this.URL.Text = usb.PersonalSelectedBLL(Accounts)[0].URL;
            this.Personal_note.Text = usb.PersonalSelectedBLL(Accounts)[0].Personal_note;
            //省市选择
            this.DropDownList1.DataSource = usb.PersonalSelectedBLL(Accounts);
            this.DropDownList1.DataTextField = "Province";
            this.DropDownList1.DataBind();
            this.DropDownList2.DataSource = usb.PersonalSelectedBLL(Accounts);
            this.DropDownList2.DataTextField = "City";
            this.DropDownList2.DataBind();
        }
        //省市联动
        protected void ddlProvince_SelectedIndexChanged1(object sender, EventArgs e)
        {
            BindCity();
        }
        void BindProvince()
        {

            string CurrentPath = this.Server.MapPath(".");
            if (System.IO.File.Exists(CurrentPath + "//Province.xml"))
            {
                this.ddlProvince.Items.Clear();
                System.Xml.XmlDocument doc = new System.Xml.XmlDocument();
                doc.Load(CurrentPath + "//Province.xml");
                XmlNodeList nodes = doc.DocumentElement.ChildNodes;
                XmlNode nodeCity = doc.DocumentElement.SelectSingleNode(@"Province/City[@Name='" + "城市" + "']");
                foreach (XmlNode node in nodes)
                {
                    this.ddlProvince.Items.Add(node.Attributes["Name"].Value);
                    int n = this.ddlProvince.Items.Count - 1;

                    if (nodeCity != null && node == nodeCity.ParentNode)
                        this.ddlProvince.SelectedIndex = n;

                }
                BindCity();
            }
            else
            {

            }
        }
        void BindCity()
        {
            string CurrentPath = this.Server.MapPath(".");
            if (System.IO.File.Exists(CurrentPath + "//Province.xml"))
            {
                this.ddlCity.Items.Clear();
                System.Xml.XmlDocument doc = new System.Xml.XmlDocument();
                doc.Load(CurrentPath + "//Province.xml");
                XmlNodeList nodes = doc.DocumentElement.ChildNodes[this.ddlProvince.SelectedIndex].ChildNodes;
                foreach (XmlNode node in nodes)
                {
                    this.ddlCity.Items.Add(node.Attributes["Name"].Value);
                    int n = this.ddlCity.Items.Count - 1;
                    if (node.Attributes["Name"].Value == "城市")
                    {
                        this.ddlCity.SelectedIndex = n;
                    }
                }
                if (this.ddlCity.SelectedIndex == -1)
                    this.ddlCity.SelectedIndex = 0;
            }
            else
            {

            }
        }
        //添加收件信息
        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Accounts = Request.Cookies["userName"].Value;
            PersonalAddBLL uir = new PersonalAddBLL();
            ReceivingInfo rec = new ReceivingInfo();
            rec.Zip_code = int.Parse(this.Zip_code.Text);
            rec.Receiving_Province = this.ddlProvince.Text;
            rec.Receiving_City = this.ddlCity.Text;
            rec.Receiving_Phone = this.Receiving_Phone.Text;
            rec.Receiving_Name = this.Receiving_Name.Text;
            rec.Detailed_address = this.Detailed_address.Text;
            rec.Accounts = Accounts;
            if (uir.UsersInsertRecei(rec))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "zixunSucess", "<script>alert('添加成功！');</script> ");

            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "zixunSucess", "<script>alert('添加失败！');</script> ");
            }
        }
        //修改个人信息
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Accounts = Request.Cookies["userName"].Value;
            LoginModel us = new LoginModel();
            us.UserName = this.UserName.Text;
            us.Gender = this.RadioButton1.Checked == true ? "男" : "女";
            us.Province = this.DropDownList1.Text;
            us.City = this.DropDownList2.Text;
            us.URL = this.URL.Text;
            us.Personal_note = this.Personal_note.Text;
            us.Accounts = Request.Cookies["userName"].Value;
            PersonalUpdateBLL uspudt = new PersonalUpdateBLL();
            if (uspudt.UpdateUsers(us))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "zixunSucess", "<script>alert('修改成功！')</script> ");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "zixunSucess", "<script>alert('修改失败！')</script> ");
            }
            loads(Accounts);
        }

        //修改密码
        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            Accounts = Request.Cookies["userName"].Value;
            PersonalSelectBLL usb = new PersonalSelectBLL();
            if (this.rdPhone.Text == usb.PersonalSelectedBLL(Accounts)[0].Phone)
            {
                PersonalUpdateBLL usup = new PersonalUpdateBLL();
                if (usup.UpdateUserspwd(this.rdPWD.Text, Accounts))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "zixunSucess", "<script>alert('修改成功！');</script> ");

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "zixunSucess", "<script>alert('修改失败！');</script> ");
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "zixunSucess", "<script>alert('手机号码不正确！');</script> ");

            }
            loads(Accounts);
        }
        ////修改头像
        //protected void btnchuan_Click(object sender, EventArgs e)
        //{
           
        //    if (FileUpload1.HasFile)
        //    {
        //        string filename = FileUpload1.FileName;
        //        String fileFix = filename.Substring(filename.LastIndexOf('.') + 1).ToLower();
        //        if (fileFix != "png" && fileFix != "jpg" && fileFix != "jpeg" && fileFix != "gif")
        //        {
        //            ClientScript.RegisterStartupScript(this.GetType(), "zixunSucess", "<script>alert('修改失败，请上传png、jpg、jpeg、gif图片类型！');</script> ");
        //        }
        //        else
        //        {
        //            Accounts = Request.Cookies["userName"].Value;
        //            PersonalUpdateBLL usup = new PersonalUpdateBLL();
        //            FileUpload1.SaveAs(Server.MapPath(".") + "//images//" + filename);
        //            this.Image1.ImageUrl = "~/images/" + filename;
        //            if (usup.UpdateUserHead(filename, Accounts))
        //            {
        //                ClientScript.RegisterStartupScript(this.GetType(), "zixunSucess", "<script>alert('头像修改成功！');</script> ");
        //            }
        //            else
        //            {
        //                ClientScript.RegisterStartupScript(this.GetType(), "zixunSucess", "<script>alert('头像修改失败！');</script> ");
        //            }
        //        }
        //    }
        //}
    }
}