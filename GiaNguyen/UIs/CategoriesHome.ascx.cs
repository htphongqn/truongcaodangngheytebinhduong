using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using vpro.functions;
using Controller;

namespace caodangngheytebinhduong.UIs
{
    public partial class CategoriesHome : System.Web.UI.UserControl
    {
        #region Decclare
        Propertity per = new Propertity();
        Home index = new Home();
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
                var list = index.Load_cate_index(5, 1);
                Rpmenu1.DataSource = list;
                Rpmenu1.DataBind();
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
        public string GetImageT(object News_Id, object News_Image1)
        {

            try
            {
                return fun.GetImageT_News1(News_Id, News_Image1);
            }
            catch (Exception ex)
            {
                //clsVproErrorHandler.HandlerError(ex);
                return null;
            }
        }
        public string GetImageCat(object News_Id, object News_Image1)
        {

            try
            {
                if (Utils.CIntDef(News_Id) > 0 && !string.IsNullOrEmpty(Utils.CStrDef(News_Image1)))
                {
                    return PathFiles.GetPathCategory(Utils.CIntDef(News_Id)) + Utils.CStrDef(News_Image1);
                }
                else
                {
                    return "";
                }
            }
            catch (Exception ex)
            {
                //clsVproErrorHandler.HandlerError(ex);
                return null;
            }
        }
        public string GetLink(object Cat_Url, object Cat_Seo_Url, object Cat_Type)
        {
            try
            {
                string temp = fun.Getlink_Cat(Cat_Url, Cat_Seo_Url);
                return temp;
            }
            catch (Exception)
            {

                throw;
            }
        }

        public string GetStyleActive(object Cat_Seo_Url, object Cat_Url)
        {
            try
            {
                string _curl = Utils.CStrDef(Request.QueryString["curl"]);
                string _seoUrl = Utils.CStrDef(Request.QueryString["purl"]);
                return per.GetStyleActive(Cat_Seo_Url, Cat_Url);
            }
            catch (Exception ex)
            {
                //clsVproErrorHandler.HandlerError(ex);
                return null;
            }
        }
        #endregion

        public IQueryable sanpham(object cat_parent_id)
        {
            var list = list_pro.sanpham(cat_parent_id, 2, 0);
            return list;
        }
        public IQueryable sanpham1(object cat_parent_id)
        {
            var list = list_pro.sanpham(cat_parent_id, 8, 2);
            return list;
        }
    }
}