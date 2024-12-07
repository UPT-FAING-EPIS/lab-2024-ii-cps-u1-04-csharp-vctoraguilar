using Bank.WebApi.Models;
using NUnit.Framework;
using Assert = NUnit.Framework.Assert;

namespace Bank.Domain.Tests
{
    public class BankAccountTests
    {
        [Test]
        public void Debit_WithValidAmount_UpdatesBalance()
        {
            // Arrange
            double beginningBalance = 11.99;
            double debitAmount = 4.55;
            double expected = 7.44;
            BankAccount account = new BankAccount("Mr. Bryan Walton", beginningBalance);
            // Act
            account.Debit(debitAmount);
            // Assert
            double actual = account.Balance;
            Assert.That(actual, Is.EqualTo(expected).Within(0.001), "Account not debited correctly");

        }
        [Test]
        public void Credit_WithValidAmount_UpdatesBalance()
        {
            // Arrange
            double beginningBalance = 11.99;
            double creditAmount = 5.00;
            double expected = 16.99;
            var account = new BankAccount("Mr. Bryan Walton", beginningBalance);

            // Act
            account.Credit(creditAmount);

            // Assert
            Assert.That(account.Balance, Is.EqualTo(expected).Within(0.001), "Account not credited correctly.");
        }

        [Test]
        public void Credit_WithNegativeAmount_ThrowsArgumentOutOfRangeException()
        {
            // Arrange
            double beginningBalance = 11.99;
            double creditAmount = -5.00;
            var account = new BankAccount("Mr. Bryan Walton", beginningBalance);

            // Act & Assert
            var ex = Assert.Throws<ArgumentOutOfRangeException>(() => account.Credit(creditAmount));
            Assert.That(ex.ParamName, Is.EqualTo("amount"), "Exception parameter name mismatch.");
        }
    }
}