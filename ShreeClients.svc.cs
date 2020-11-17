using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Shree365
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "ShreeClients" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select ShreeClients.svc or ShreeClients.svc.cs at the Solution Explorer and start debugging.
    public class ShreeClients : IShreeClients
    {
       
        public bool InsertRole(UserRole obj)
        {
            roleList.Add(obj);
            return true;
        }

        public List<UserRole> GetAllRole()
        {
            return roleList;
        }

        public bool DeleteRole(int Cid)
        {
            var item = roleList.First(x => x.RoleID == Cid);

            roleList.Remove(item);
            return true;
        }

        public bool UpdateRole(UserRole obj)
        {
            var list = roleList;
            roleList.Where(p => p.RoleID ==
            obj.RoleID).Update(p => p.RoleName = obj.RoleName);
            return true;
        }

        public static List<UserRole> roleList = new List<UserRole>()
         {
        new UserRole {RoleID = 1, RoleName="Sujeet"},
        new UserRole {RoleID = 2, RoleName="Rahul" },
        new UserRole {RoleID = 3, RoleName="Mayur"}
         };       
    }
    public static class LinqUpdates
    {
        public static void Update<T>(this IEnumerable<T> source, Action<T> action)
        {
            foreach (var item in source)
                action(item);
        }
    } 
}
