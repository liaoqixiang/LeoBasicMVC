using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDAL
{
    public interface IBaseDAL<T> where T : class, new()
    {
        #region 1.0 Add Entity +int Add(T model)
        /// <summary>
        /// add new entity
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        bool Add(T model);
        #endregion

        #region 2.0 Using id to delete +int Del(T model)
        /// <summary>
        /// Using id to delete
        /// </summary>
        /// <param name="model">delete the model with that id</param>
        /// <returns></returns>
        bool Del(T model);
        #endregion

        #region 3.0 Using condition to delete +int DelBy(Func<T, bool> delWhere)
        /// <summary>
        /// 3.0 Using condition to delete
        /// </summary>
        /// <param name="delWhere"></param>
        /// <returns></returns>
        bool DelBy(Func<T, bool> delWhere);
        #endregion

        #region 4.0 modify +int Modify(T model, params string[] proNames)
        /// <summary>
        /// </summary>
        /// <param name="model">entity</param> 
        /// <returns></returns>
        bool Modify(T model);
        #endregion

        #region 5.0 get whole list with constraint +List<T> GetListBy(Expression<Func<T,bool>> whereLambda)
        /// <summary>
        /// 5.0 get whole list with constraint +List<T> GetListBy(Expression<Func<T,bool>> whereLambda)
        /// </summary>
        /// <param name="whereLambda"></param>
        /// <returns></returns>
        List<T> GetListBy(Func<T, bool> whereLambda);
        #endregion

        #region 6.0 Pagenaiton + List<T> GetPagedList<TKey>
        /// <summary>
        /// 6.0 pagnation + List<T> GetPagedList<TKey>
        /// </summary>
        /// <param name="pageIndex">index of page</param>
        /// <param name="pageSize">page size</param>
        /// <param name="whereLambda">lamda expression</param>
        /// <param name="orderBy">order the list</param>
        /// <returns></returns>
        List<T> GetPagedList<TKey>(int pageIndex, int pageSize, Func<T, bool> whereLambda, Func<T, TKey> orderBy, out int totalnum, out int totalcount, string SortOrder);
        #endregion
    }
}
