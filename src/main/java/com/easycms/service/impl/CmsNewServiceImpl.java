package com.easycms.service.impl;
import org.springframework.stereotype.Service;
import com.easycms.base.AbstractBaseDao;
import com.easycms.entity.CmsNew;
import com.easycms.service.CmsNewService;
@Service
public class CmsNewServiceImpl extends AbstractBaseDao<CmsNew, Integer>implements CmsNewService
{
    
    public void saveNew(CmsNew news)
    {
        save(news);
    }

    @Override
    public void deleteById(Integer id)
    {
        delete(id);
        
    }
    

}
