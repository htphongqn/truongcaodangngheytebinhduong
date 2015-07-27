using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Controller;
using vpro.functions;

namespace caodangngheytebinhduong.UIs
{
    public partial class Footer : System.Web.UI.UserControl
    {
        Config cf = new Config();
        Propertity per = new Propertity();
        Function fun = new Function();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblOnline.Text = string.Format("{0:#,#}", Utils.CIntDef(Application["Online"]));
            var _hit = cf.Config_meta();
            if (_hit.ToList().Count > 0)
            {
                int sum = Utils.CIntDef(_hit.ToList()[0].CONFIG_HITCOUNTER);
                lblSum.Text = string.Format("{0:#,#}", sum);
            }

            var list = per.Load_Online();
            string str = "<div class='{0}'><a target='_blank'  href='{1}' title='{2}'><i class='{3}'></i>></a></div>";
            foreach (var item in list)
            {
                switch (item.ONLINE_TYPE)
                {
                    case 3: lblsocial_network.Text += String.Format(str, "facebook", item.ONLINE_NICKNAME, item.ONLINE_DESC, "ifa fa-facebook-square"); break;
                    case 4: lblsocial_network.Text += String.Format(str, "google-plus", item.ONLINE_NICKNAME, item.ONLINE_DESC, "fa fa-google-plus-square"); break;
                    case 5: lblsocial_network.Text += String.Format(str, "twitter", item.ONLINE_NICKNAME, item.ONLINE_DESC, "fa fa-twitter-square"); break;
                    case 6: lblsocial_network.Text += String.Format(str, "youtube", item.ONLINE_NICKNAME, item.ONLINE_DESC, "fa fa-youtube-square"); break;
                }
            }
            if (!IsPostBack)
            {
                Show_File_HTML("contact-vi.htm");
                load_Logo();
            }
        }

        protected void load_Logo()
        {
            var _logo = per.Load_logo_or_sologan("1", 1);
            if (_logo.ToList().Count > 0)
            {
                RpLogo.DataSource = _logo;
                RpLogo.DataBind();
            }
        }

        #region Funtion
        private void Show_File_HTML(string HtmlFile)
        {
            string pathFile;
            string strHTMLContent;
            pathFile = Server.MapPath("/Data/contact/" + HtmlFile);

            if ((File.Exists(pathFile)))
            {
                StreamReader objNewsReader;
                objNewsReader = new StreamReader(pathFile);
                strHTMLContent = objNewsReader.ReadToEnd();
                objNewsReader.Close();

                Literal1.Text = strHTMLContent;
            }
            else
                Literal1.Text = "";

        }
        public string GetLogo(object Banner_type, object banner_field, object Banner_ID, object Banner_Image)
        {
            return fun.Getlogo(Banner_type, banner_field, Banner_ID, Banner_Image);
        }
        #endregion
    }
}