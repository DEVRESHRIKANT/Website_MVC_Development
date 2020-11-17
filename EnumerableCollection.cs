using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Web;
using java.util;

namespace DEVRE
{
    public class EnumerableCollection
    {
        public EnumerableCollection(Collection collection)
        {
            m_collection = collection;
        }

        public IEnumerator GetEnumerator()
        {
            return new Enumerator(m_collection);
        }

        private Collection m_collection;
    }

    public class Enumerator : IEnumerator
    {
        public Enumerator(Collection collection)
        {
            m_collection = collection;
            m_iterator = m_collection.iterator();
        }

        public object Current
        {
            get
            {
                return m_iterator.next();
            }
        }

        public bool MoveNext()
        {
            return m_iterator.hasNext();
        }

        public void Reset()
        {
            m_iterator = m_collection.iterator();
        }

        private Collection m_collection;
        private Iterator m_iterator;
    }
}