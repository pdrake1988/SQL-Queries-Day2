using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _04_Generics
{
    internal class MyList<T>
    {
        private List<T> List { get; set; }
        public void Add(T element)
        {
            List.Add(element);
        }
        public bool Contains(T element)
        {
            return List.Contains(element);
        }
        public void Clear()
        {
            List.Clear();
        }
        public void InsertAt(T element, int index)
        {
            List[index] = element;
        }
        public void DeleteAt(int index)
        {
            List.RemoveAt(index);
        }
        public T Find(int index)
        {
            return (T)List[index];
        }
    }
}
