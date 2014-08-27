﻿using System.Collections.Generic;
using System.Linq;
using teaCRM.Dao.Manual.Impl;
using teaCRM.Entity;

namespace teaCRM.Dao.Manual.TreeHelpers.Impl
{
    /// <summary>
    /// 筛选器树形帮助类。 2014-08-20 07:58:50 By 唐有炜
    /// </summary>
    public class FilterTreeHelperImpl : ITreeHelper<FilterTree>
    {
        //private static ITFunFilterDaoManual FunFilterDaoManual = new TFunFilterDaoManualImpl();
        public ITFunFilterDao FunFilterDao { set; get; }

        #region 获取父类集合

        public IList<FilterTree> ReturnParentTree()
        {
            List<FilterTree> trees;
            trees = FunFilterDao.GetList()
                .Where(f => f.ParentId == 0)
                .Select(f => new FilterTree() {ModuleID = f.Id, ParentID = (int) f.ParentId, ModuleName = f.FilName})
                .ToList();
            return trees;
        }

        #endregion

        #region 判断分类是否有子类

        /// <summary>
        /// 判断分类是否有子类
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public bool IsHaveChild(int id)
        {
            bool flag = FunFilterDao.ExistsEntity(f => f.Id == id);
            return flag;
        }

        #endregion

        #region 根据id获取子类

        /// <summary>
        /// 根据id获取子类
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public IList<FilterTree> GetChild(int id)
        {
            var childTrees = FunFilterDao.GetList()
                .Where(f => f.ParentId == id)
                .Select(f => new FilterTree() {ModuleID = f.Id, ParentID = (int) f.ParentId, ModuleName = f.FilName})
                .ToList();
            return childTrees;
        }

        #endregion

        #region 获取json

        /// <summary>
        /// 获取json
        /// </summary>
        /// <returns></returns>
        public string GetJson()
        {
            string json = "[";
            IList<FilterTree> trees = ReturnParentTree();
            foreach (FilterTree tree in trees)
            {
                if (tree != trees[trees.Count - 1])
                {
                    json += GetJsonByModel(tree) + ",";
                }
                else
                {
                    json += GetJsonByModel(tree);
                }
            }
            json += "]";
            //去除空子树
            json = json.Replace(",\"children\":[]", "");
            return json;
        }

        #endregion

        #region 根据模型生成json

        /// <summary>
        /// 根据模型生成json
        /// </summary>
        /// <param name="tree"></param>
        /// <returns></returns>
        public string GetJsonByModel(FilterTree tree)
        {
            string json = "";
            bool flag = IsHaveChild(tree.ModuleID);
            json = "{"
                   + "\"id\":\"" + tree.ModuleID + "\","
                   + "\"pid\":\"" + tree.ParentID + "\","
                //+ "\"path\":\"" + tree.ModulePath + "\","
                   + "\"text\":\"" + tree.ModuleName + "\",";

            if (flag)
            {
                json += "\"children\":";
                IList<FilterTree> childTrees = GetChild(tree.ModuleID);

                json += "[";
                foreach (FilterTree childTree in childTrees)
                {
                    if (tree != childTrees[childTrees.Count - 1])
                    {
                        json += GetJsonByModel(childTree) + ",";
                    }
                    else
                    {
                        json += GetJsonByModel(childTree);
                    }
                }
                if (json.EndsWith(","))
                {
                    json = json.TrimEnd(',');
                }
                json += "]";
            }
            else
            {
                json = json.Substring(0, json.Length - 1);
            }
            json += "}";


            return json;
        }

        #endregion
    }
}