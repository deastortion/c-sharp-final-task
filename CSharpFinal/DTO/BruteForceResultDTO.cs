namespace CSharpFinal.DTO
{
    public class BruteForceResultDTO
    {
        public string Password { get; set; }

        public double Time { get; set; }

        public BruteForceResultDTO(string password, double time)
        {
            Time = time;
            Password = password;
        }
    }
}
