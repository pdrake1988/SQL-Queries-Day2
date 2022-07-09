using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _04_Generics
{
    internal class GenericRepository<T> : IRepository<T> where T : class
    {
        T[] arr { get; set; }
        public void Add(T item)
        {
            arr.Prepend(item);
        }

        public IEnumerable<T> GetAll()
        {
            return arr;
        }

        public T GetById(int id)
        {
            return (T)arr[id];
        }
    }
}
