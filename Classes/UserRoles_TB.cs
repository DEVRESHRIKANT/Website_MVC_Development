using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DEVRE.Classes
{
    public class UserRoles_TB
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Designation { get; set; }
        public string Department { get; set; }
        public List<Employees> lstEmployees { get; set; }
    }
}