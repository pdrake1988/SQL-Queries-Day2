using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignment03
{
    internal interface Person
    {
        int Id { get; set; }
        string Name { get; set; }
        string FirstName { get; set; }
        string LastName { get; set; }
        string Email { get; set; }
        int Age { get; set; }
    }
}
