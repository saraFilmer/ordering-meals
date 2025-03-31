namespace IBLL
{
   
        public interface InterfaceBll_Basic<T>
        {
           //פעולות בסיסיות שכל BLL ממשות
            public Task<List<T>> SelectAll();
            public Task<T> Add(T t);
            public Task<T>Put(T t);
            public Task<bool>Del(T t);
    }

    }

