﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using teaCRM.Common;
using teaCRM.Service;
using teaCRM.Service.CRM;
using teaCRM.Service.CRM.Impl;
using teaCRM.Web.Filters;

namespace teaCRM.Web.Controllers.Apps.CRM
{
    public class LoadDataController : Controller
    {
        //ICustomerService CustomerService = new CustomerServiceImpl();
        /// <summary>
        /// LoadDataController 注入Service依赖
        /// </summary>
        public ICustomerService CustomerService { set; get; }

        public IAccountService AccountService { set; get; }

        #region 获取筛选器树形数据

        //
        // GET: /Apps/CRM/LoadData/GetTreeData/
        [UserAuthorize]
        public string GetTreeData()
        {
            var compNum = Session[teaCRMKeys.SESSION_USER_COMPANY_INFO_NUM].ToString();
            var filterTreeData = CustomerService.GetFilterTreeData(compNum);
            return filterTreeData;
        }

        #endregion

        #region 获取客户信息列表

        //
        // GET: /Apps/CRM/LoadData/GetCustomerLsit/
        public string GetCustomerLsit()
        {
            return CustomerService.GetCustomerLsit();
        }

        #endregion

        #region 获取客户工具栏

        //
        // GET: /Apps/CRM/LoadData/GetCustomerMenu/
        public string GetCustomerMenu()
        {
            return CustomerService.GetCustomerMenu();
        }

        #endregion

        #region 获取跟进记录列表

        //
        // GET: /Apps/CRM/LoadData/GetTraceList/
        public string GetTraceList()
        {
            return CustomerService.GetTraceList();
        }

        #region 获取跟进记录工具栏

        //
        // GET: /Apps/CRM/LoadData/GetTraceMenu/
        public string GetTraceMenu()
        {
            return CustomerService.GetTraceMenu();
        }

        #endregion

        #endregion
    }
}