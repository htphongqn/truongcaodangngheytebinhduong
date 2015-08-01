using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Controller;

namespace caodangngheytebinhduong.UIs
{
    public partial class CategoriesRight : System.Web.UI.UserControl
    {
        #region Decclare
        Propertity per = new Propertity();
        Function fun = new Function();
        List_product list_pro = new List_product();
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Load_Menu1();
        }

        #region Load data Menu

        protected void Load_Menu1()
        {
            try
            {
                var list = per.Loadmenu(1, 10);
                RpList.DataSource = list;
                RpList.DataBind();
            }
            catch (Exception ex)
            {
                //clsVproErrorHandler.HandlerError(ex);
            }

        }
        protected IQueryable Load_Menu2(object cat_parent_id)
        {
            try
            {
                var list = per.Menu2(cat_parent_id);
                return list;
            }
            catch (Exception ex)
            {
                //clsVproErrorHandler.HandlerError(ex);
                return null;
            }

        }
        #endregion

        #region Function
        public string GetLinkNews(object News_Url, object News_Seo_Url, object cat_seo)
        {
            try
            {
                return fun.Getlink_News(News_Url, News_Seo_Url, cat_seo);
            }
            catch (Exception ex)
            {
                //vpro.functions.clsVproErrorHandler.HandlerError(ex);
                return null;
            }
        }
        #endregion

        public IQueryable sanpham(object cat_parent_id)
        {
            var list = list_pro.sanpham(cat_parent_id, 8, 0);
            return list;
        }
    }
}