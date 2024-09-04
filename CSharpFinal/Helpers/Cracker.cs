
using CSharpFinal.DTO;

namespace CSharpFinal.Helpers
{
    public class Cracker
    {
        public event EventHandler<BruteForceResultDTO> BruteForceCompleted;

        private bool IsCracked = false;

        private DateTime timer;

        private static readonly string charactersString = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!$#@-";

        public void Crack(string hash)
        {
            timer = DateTime.Now;

            int estimatedPasswordLength = 0;

            while (!IsCracked)
            {
                estimatedPasswordLength++;
                StartBruteForce(hash, estimatedPasswordLength);
            }
        }

        private void StartBruteForce(string hash, int keyLength)
        {
            var keyCharacters = CreateCharactersArray(keyLength, charactersString[0]);
            CreateNewKey(hash, 0, keyCharacters, keyLength, keyLength - 1);
        }

        private char[] CreateCharactersArray(int length, char character)
        {
            return (from c in new char[length] select character).ToArray();
        }

        private void CreateNewKey(string hash, int currentCharacterPosition, char[] keyCharacters, int keyLength, int lastCharacterIndex)
        {
            var nextCharacterPosition = currentCharacterPosition + 1;

            for (int i = 0; i < charactersString.Length; i++)
            {
                keyCharacters[currentCharacterPosition] = charactersString[i];

                if (currentCharacterPosition < lastCharacterIndex)
                {
                    CreateNewKey(hash, nextCharacterPosition, keyCharacters, keyLength, lastCharacterIndex);
                }
                else
                {
                    if (Password.Verify(hash, new string(keyCharacters)))
                    {
                        if (!IsCracked)
                        {
                            IsCracked = true;
                            Console.WriteLine($"[Cracker] I finally found this goddamn password: {new string(keyCharacters)}");
                            OnBruteForceCompleted(new BruteForceResultDTO(new string(keyCharacters), DateTime.Now.Subtract(timer).TotalSeconds));
                        }

                        return;
                    }
                }
            }
        }

        protected virtual void OnBruteForceCompleted(BruteForceResultDTO result)
        {
            BruteForceCompleted?.Invoke(this, result);
        }
    }
}