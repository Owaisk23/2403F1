using Microsoft.Data.SqlClient;
using System.Data;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CRUD
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            LoadProducts();
        } 
            SqlConnection Conn = new SqlConnection("Data Source=.;Initial Catalog=IMTIAZ;User ID=sa;Password=aptech;Connect Timeout=30;Encrypt=False;Trust Server Certificate=False;Application Intent=ReadWrite;Multi Subnet Failover=False");

            private void ClearData()
            {
                pname.Clear();
                desc.Clear();
                price.Clear();
                qty.Clear();
                cat.Clear();
                pid.Clear();
            }

            private void ClearFeilds(object sender, RoutedEventArgs e)
            {
                ClearData();
            }
            private void LoadProducts()
            {
                SqlCommand getProducts = new SqlCommand("SELECT * FROM products", Conn);
                Conn.Open();
                DataTable products = new DataTable();


                SqlDataReader reader = getProducts.ExecuteReader();

                products.Load(reader);
                Conn.Close();
                productGrid.ItemsSource = products.DefaultView;
            }


            private bool isValid()
            {
                if (pname.Text == string.Empty || desc.Text == string.Empty || price.Text == string.Empty || qty.Text == string.Empty || cat.Text == string.Empty)
                {
                    MessageBox.Show("All fields are required", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    return false;
                }
                else
                {
                    return true;
                }

            }

            private void AddProduct(object sender, RoutedEventArgs e)
            {
                if (isValid())
                {
                    SqlCommand addprod = new SqlCommand("Insert into products values (@pname, @desc, @price, @qty,@cat);", Conn);

                    addprod.CommandType = CommandType.Text;
                    Conn.Open();
                    addprod.Parameters.AddWithValue("@pname", pname.Text);
                    addprod.Parameters.AddWithValue("@desc", desc.Text);
                    addprod.Parameters.AddWithValue("@price", price.Text);
                    addprod.Parameters.AddWithValue("@qty", qty.Text);
                    addprod.Parameters.AddWithValue("@cat", cat.Text);
                    addprod.ExecuteNonQuery();

                    Conn.Close();
                    MessageBox.Show("Product inserted successfully", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                    ClearData();
                    LoadProducts();

                }
            }

            private void DeleteProduct(object sender, RoutedEventArgs e)
            {
                if (pid.Text != string.Empty)
                {
                    SqlCommand delProd = new SqlCommand("Delete from products where Id=@pid", Conn);
                    delProd.CommandType = CommandType.Text;
                    delProd.Parameters.AddWithValue("@pid", pid.Text);
                    Conn.Open();
                    delProd.ExecuteNonQuery();
                    Conn.Close();
                    MessageBox.Show("Product Deleted successfully", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                    ClearData();
                    LoadProducts();
                }
                else
                {
                    MessageBox.Show("We need product id to delete it.", "Can't Delete without id", MessageBoxButton.OK, MessageBoxImage.Warning);
                }
            }

            private void FetchProduct(object sender, RoutedEventArgs e)
            {
                if (pid.Text != string.Empty)
                {
                    SqlCommand getProduct = new SqlCommand("SELECT * from products where Id=@pid", Conn);
                    getProduct.CommandType = CommandType.Text;
                    getProduct.Parameters.AddWithValue("@pid", pid.Text);

                    Conn.Open();
                    SqlDataReader reader = getProduct.ExecuteReader();
                    if (reader.Read())
                    {
                        pname.Text = reader["pname"].ToString();
                        desc.Text = reader["desc"].ToString();
                        price.Text = reader["price"].ToString();
                        qty.Text = reader["qty"].ToString();
                        cat.Text = reader["cat"].ToString();
                    }
                    else
                    {
                        MessageBox.Show("Invalid Id.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                    Conn.Close();

                }
                else
                {
                    MessageBox.Show("We need product id to update it.", "Can't update without id", MessageBoxButton.OK, MessageBoxImage.Warning);
                }

            }

            private void UpdateProduct(object sender, RoutedEventArgs e)
            {
                if (isValid())
                {
                    SqlCommand updProd = new SqlCommand("Update products set pname=@pname, [desc]=@desc, price=@price,qty=@qty, cat=@cat Where Id=@pid", Conn);
                    updProd.CommandType = CommandType.Text;

                    updProd.Parameters.AddWithValue("@pname", pname.Text);
                    updProd.Parameters.AddWithValue("@desc", desc.Text);
                    updProd.Parameters.AddWithValue("@price", price.Text);
                    updProd.Parameters.AddWithValue("@qty", qty.Text);
                    updProd.Parameters.AddWithValue("@cat", cat.Text);
                    updProd.Parameters.AddWithValue("@pid", pid.Text);

                    Conn.Open();
                    updProd.ExecuteNonQuery();

                    Conn.Close();
                    MessageBox.Show("Product Update successfully", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                    ClearData();
                    LoadProducts();
                }

            }


        }
    }