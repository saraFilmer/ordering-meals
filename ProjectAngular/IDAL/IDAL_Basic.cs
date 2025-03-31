namespace IDAL
{
    
        public interface InterfaceDal_Basic<T>
        {
            public Task<List<T>>SelectAll();
            public Task<T>Add(T t);
            public Task<T>Put(T t);
            public Task<bool>Del(T t);

        }
    }

