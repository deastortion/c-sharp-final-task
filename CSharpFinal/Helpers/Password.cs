using System.Security.Cryptography;
using System.Text;

namespace CSharpFinal.Helpers
{
    public static class Password
    {
        public static string Hash(string password)
        {
            return Convert.ToHexString(SHA256.HashData(Encoding.UTF8.GetBytes(password)));
        }

        public static bool Verify(string hash, string password)
        {
            return hash == Hash(password);
        }
    }
}