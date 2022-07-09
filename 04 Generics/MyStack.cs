using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _04_Generics
{
    internal class MyStack<T>
    {
        private Stack<T> _stack { get; set; }
        public int Count()
        {
            return _stack.Count;
        }
        public T Pop()
        {
            return _stack.Pop();
        }
        public void Push(T item)
        {
            _stack.Push(item);
        }
    }
}
