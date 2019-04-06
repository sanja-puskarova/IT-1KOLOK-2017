using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_PrvKolok_2017
{
    public partial class _Default : Page
    {
        int cena = 0;
        int cena1 = 0;
        int cena2 = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtIme_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnNajaviSe_Click(object sender, EventArgs e)
        {
            Image1.Visible = true;
            lstZnarovi.Visible = true;
            txtKolicina1.Visible = true;
            txtKolicina2.Visible = true;
            txtKolicina3.Visible = true;
            chkFilmovi.Visible = true;
            lblCena.Visible = true;
            btnKupi.Visible = true;
        }

        protected void lstZnarovi_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (lstZnarovi.SelectedIndex == 0)
            {
                chkFilmovi.Items.Clear();
                chkFilmovi.Items.Add( "Forrest Gump");
                chkFilmovi.Items.Add("Good will hunting");
                chkFilmovi.Items.Add("A beautiful mind");

            }
            if (lstZnarovi.SelectedIndex == 1)
            {
                chkFilmovi.Items.Clear();
                chkFilmovi.Items.Add("Keeping up with the joneses");
                chkFilmovi.Items.Add("Masterminds");
                chkFilmovi.Items.Add("Ted2");

            }
            if (lstZnarovi.SelectedIndex == 2)
            {
                chkFilmovi.Items.Clear();
                chkFilmovi.Items.Add("Batman vs Superman");
                chkFilmovi.Items.Add("Deadpool 3D");
                chkFilmovi.Items.Add("The accountant");

            }
            
            

        }

        protected void chkFilmovi_SelectedIndexChanged(object sender, EventArgs e)
        {


            if (lstZnarovi.SelectedIndex == 0)
            {

                chkFilmovi.Items[0].Value = 150.ToString();
                chkFilmovi.Items[1].Value = 130.ToString();
                chkFilmovi.Items[2].Value = 100.ToString();
                

            }

            if (lstZnarovi.SelectedIndex == 1)
            {


                chkFilmovi.Items[0].Value = 120.ToString();
                chkFilmovi.Items[1].Value = 170.ToString();
                chkFilmovi.Items[2].Value = 180.ToString();

            }

            if (lstZnarovi.SelectedIndex == 2)
            {


                chkFilmovi.Items[0].Value = 350.ToString();
                chkFilmovi.Items[1].Value = 300.ToString();
                chkFilmovi.Items[2].Value = 200.ToString();

            }
           

        }




        protected void btnKupi_Click(object sender, EventArgs e)
        {
            int vk = 0;

            

            for (int i = 0; i < chkFilmovi.Items.Count; i++)

            {
                int vrednost = 0;

                if (chkFilmovi.Items[i].Selected)
                {
                    int bla = int.Parse(chkFilmovi.Items[i].Value);
                  //  txtPomos.Text = chkFilmovi.Items[i].Value;
                   // int pomos = int.Parse(txtPomos.Text);
                    if (i == 0) {
                         vrednost = int.Parse(txtKolicina1.Text);
                        vk += vrednost * bla;
                    }
                    if (i == 1)
                    {
                         vrednost = int.Parse(txtKolicina2.Text);
                        vk += vrednost * bla;
                    }
                    if (i == 2)
                    {
                         vrednost = int.Parse(txtKolicina3.Text);
                        vk += vrednost * bla;
                    }
                    
                    
                }

            }

            lblCena.Text = "Вкупната цена изнесува " + vk + "МКД";




        }

        
    }

    


}