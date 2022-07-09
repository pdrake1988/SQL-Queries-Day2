using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _04_Generics
{
    internal interface IRepository<T>
    {
        void Add(T item);
        IEnumerable<T> GetAll();
        T GetById(int id);
    }
}
