using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EzTriage
{
    public class UserValidation
    {
        string userName;
        string password;

        public void SignIn() { } //will receive users login info
        public void Validate() { } //will validate userName and password
        public void LogOut() { } //will logout user
    }
}