package com.easycms.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.easycms.common.Pager;
import com.easycms.entity.CmsNew;
import com.easycms.service.CmsNewService;

@Controller
@RequestMapping("/news")

public class CmsNewController
{
    private static final Logger logger = Logger.getLogger(CmsNewController.class);
    
    @Resource(name = "cmsNewServiceImpl")
    private CmsNewService us;
    
    // 分页显示列表
    @RequestMapping("/v_list.do")
    public String list(HttpServletRequest req, ModelMap model)
    {
        int pageSize = 10;
        int pageNo = 0;
        String sPageNo = req.getParameter("pager.offset");
        if (sPageNo != null)
        {
            pageNo = Integer.parseInt(sPageNo);
        }
        Pager<CmsNew> newsPager = us.findByPage(pageNo, pageSize);
        model.addAttribute("newsPager", newsPager);
        return "news/showNew";
    }
    
    @RequestMapping("/v_add.do")
    public String showAdd(HttpServletRequest req, ModelMap model)
    {
        //获的会员组
        return "news/showAddNew";
    }
    
    //添加数据
    @RequestMapping("/o_add.do")
    public String add(HttpServletRequest req, ModelMap model, CmsNew news)
    {
        //        String title = news.getTitle();
        //        String content = news.getContent();
        us.save(news);
        return list(req, model);
    }
    
    //删除数据
    @RequestMapping("/o_delete.do")
    public String delete(HttpServletRequest req, ModelMap model, Integer id)
    {
        us.deleteById(id);
        return list(req, model);
    }
    
    //显示修改aaaa
    @RequestMapping("/v_update.do")
    public String showUpdate(HttpServletRequest req, ModelMap model, Integer id)
    {
        //获得用户
        CmsNew news = us.findById(id);
        //获得用户扩展
        //获的会员组
        news.setId(id);
        model.addAttribute("news", news);
        return "news/updateNew";
    }
    
    //修改
    @RequestMapping("/o_update.do")
    public String update(HttpServletRequest req, ModelMap model, CmsNew news)
    {
        us.update(news);
        //        System.out.println(news.getId());
        //        System.out.println(news.getTitle());
        //        System.out.println(news.getContent());
        
        //log it
        if (logger.isDebugEnabled())
        {
            logger.debug(model);
        }
        return list(req, model);
    }
    
}
