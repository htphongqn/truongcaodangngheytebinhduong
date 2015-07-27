using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Controller;

namespace caodangngheytebinhduong.UIs
{
    public partial class Header : System.Web.UI.UserControl
    {
        Propertity per = new Propertity();
        Function fun = new Function();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                load_BannerAndLogo();
        }

        #region Load Data
        protected void load_BannerAndLogo()
        {
            var _banner = per.Load_logo_or_sologan("2", 1);
            if (_banner.ToList().Count > 0)
            {
                RpBanner.DataSource = _banner;
                RpBanner.DataBind();
            }

            var _logo = per.Load_logo_or_sologan("1", 1);
            if (_logo.ToList().Count > 0)
            {
                RpLogo.DataSource = _logo;
                RpLogo.DataBind();
            }
        }
        public string Getbanner(object Banner_type, object banner_field, object Banner_ID, object Banner_Image)
        {
            return fun.Getbanner(Banner_type, banner_field, Banner_ID, Banner_Image);
        }
        public string GetLogo(object Banner_type, object banner_field, object Banner_ID, object Banner_Image)
        {
            return fun.Getlogo(Banner_type, banner_field, Banner_ID, Banner_Image);
        }
        #endregion
    }
}