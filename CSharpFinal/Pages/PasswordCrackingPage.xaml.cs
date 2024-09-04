using System.Windows;
using CSharpFinal.DTO;
using CSharpFinal.Helpers;
using System.Windows.Controls;

namespace CSharpFinal.Pages
{
    public partial class PasswordCrackingPage : Page
    {
        public PasswordCrackingPage()
        {
            InitializeComponent();
        }

        public PasswordCrackingPage(PasswordWithSaltDTO data):this()
        {
            SaltTextBlock.Text = $"- Salt: {data.Salt}";
            HashTextBlock.Text = $"- Hash: {Password.Hash(data.Password + data.Salt)}";
            PasswordTextBlock.Text = $"- Password: {data.Password}";
        }

        private void OnClick(object sender, RoutedEventArgs e)
        {
            var hash = HashTextBlock.Text.Replace("- Hash: ", "");

            var cracker = new Cracker();
            cracker.BruteForceCompleted += OnBruteForceCompleted;
            cracker.Crack(hash);
        }

        private void OnBruteForceCompleted(object sender, BruteForceResultDTO result)
        {
            DecodedPasswordTextBlock.Text = $"- Decoded password: {result.Password}";
            TimerTextBlock.Text = $"- Time: {result.Time}s";
        }
    }
}