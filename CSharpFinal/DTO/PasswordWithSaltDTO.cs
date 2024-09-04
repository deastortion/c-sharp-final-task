namespace CSharpFinal.DTO
{
    public class PasswordWithSaltDTO
    {
        public string Password { get; set; }

        public string Salt { get; set; }

        public PasswordWithSaltDTO(string password, string salt) { 
            Password = password;
            Salt = salt;
        }
    }
}
