using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace e_mobile_shop.Models.Repository.EmailRepository
{
    public interface IEmailService
    {
        void Send(string to, string subject, string html, string from = null);
        Task SendEmailAsync(MailRequest mailRequest);
    }
}
