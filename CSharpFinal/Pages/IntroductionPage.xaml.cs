using System.Windows;
using System.Windows.Controls;

namespace CSharpFinal.Pages
{
    public partial class IntroductionPage : Page
    {
        public IntroductionPage()
        {
            InitializeComponent();
        }

        private void OnClick(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new PasswordGenerationPage());
        }
    }
}