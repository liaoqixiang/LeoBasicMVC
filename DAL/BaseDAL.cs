using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utility;

namespace DAL
{
    public class BaseDAL<T> : IDAL.IBaseDAL<T> where T : class, new()
    {
        DbContext db = DbContextFactory.CreateSingleDbcontext();
        public bool Add(T model)
        {
            db.Set<T>().Add(model);
            return db.SaveChanges() > 0;
        }

        public bool Del(T model)
        {
            db.Set<T>().Attach(model);
            db.Set<T>().Remove(model);
            return db.SaveChanges() > 0;
        }

        public bool DelBy(Func<T, bool> delWhere)
        {
            var list = db.Set<T>().Where(delWhere).ToList();
            list.ForEach(c => { db.Set<T>().Attach(c); db.Set<T>().Remove(c); });
            return db.SaveChanges() > 0;
        }

        public List<T> GetListBy(Func<T, bool> whereLambda)
        {
            var list = db.Set<T>().Where(whereLambda).ToList();
            return list;

        }
        public List<T> GetPagedList<TKey>(int pageIndex, int pageSize, Func<T, bool> whereLambda, Func<T, TKey> orderBy, out int totalnum, out int totalcount, string SortOrder)
        {
            totalcount = orderBy == null ? db.Set<T>().Where(whereLambda).Count() : db.Set<T>().Where(whereLambda).OrderBy(orderBy).Count();
            var tempset = db.Set<T>().Where(whereLambda);
           
            if (orderBy == null)
            {
                tempset = tempset.Skip((pageIndex - 1) * pageSize).Take(pageSize);
                totalnum = tempset.Count();
            }
            else
            {
                if (SortOrder == "")
                {
                    tempset = tempset.Skip((pageIndex - 1) * pageSize).Take(pageSize);
                    totalnum = tempset.Count();
                }
                else
                {
                    if (SortOrder == "ASC")//ascending
                    {
                        tempset = tempset.OrderBy(orderBy).Skip((pageIndex - 1) * pageSize).Take(pageSize);

                    }
                    else
                    {
                        tempset = tempset.OrderByDescending(orderBy).Skip((pageIndex - 1) * pageSize).Take(pageSize);

                    }
                    totalnum = tempset.Count();
                }
            }
            

            return tempset.ToList();


        }

        public bool Modify(T model)
        {
            db.Entry<T>(model).State = EntityState.Modified;

            return true;
        }


    }
}
