using CSharpFinal.DTO;
using System.Windows;
using System.Windows.Controls;

namespace CSharpFinal.Pages
{
    public partial class PasswordGenerationPage : Page
    {
        public PasswordGenerationPage()
        {
            InitializeComponent();
            PasswordTextBox.Text = "qw";
            SaltTextBox.Text = "1000";
        }

        private void OnClick(object sender, RoutedEventArgs e)
        {
            if (String.IsNullOrWhiteSpace(PasswordTextBox.Text) || String.IsNullOrWhiteSpace(SaltTextBox.Text))
            {
                return;
            }

            this.NavigationService.Navigate(new PasswordCrackingPage(new PasswordWithSaltDTO(PasswordTextBox.Text, SaltTextBox.Text)));
        }
    }
}