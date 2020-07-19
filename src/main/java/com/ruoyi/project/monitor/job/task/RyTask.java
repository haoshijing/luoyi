package com.ruoyi.project.monitor.job.task;

import com.ruoyi.common.utils.LocalDateTimeUtils;
import com.ruoyi.common.utils.spring.SpringUtils;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.project.module.tss.domain.TServices;
import com.ruoyi.project.module.tss.service.ITServicesService;
import com.ruoyi.project.monitor.job.service.IJobLogService;
import org.apache.shiro.authz.annotation.RequiresUser;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.util.ThreadContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.ruoyi.common.utils.StringUtils;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

/**
 * 定时任务调度测试
 * 
 * @author ruoyi
 */
@Component("ryTask")
public class RyTask
{
    private SecurityManager securityManager = (SecurityManager)SpringUtils.getBean("securityManager");

    @Autowired
    private ITServicesService tServicesService;


    public void ryMultipleParams(String s, Boolean b, Long l, Double d, Integer i)
    {
        System.out.println(StringUtils.format("执行多参方法： 字符串类型{}，布尔类型{}，长整型{}，浮点型{}，整形{}", s, b, l, d, i));
    }

    public void ryParams(String params)
    {
        System.out.println("执行有参方法：" + params);
    }


    public void ryNoParams()
    {
        if(ThreadContext.getSecurityManager()==null){
            ThreadContext.bind(securityManager);
        }

        TServices tServices = new TServices();
        tServices.setServiceStatus("2");
        List<TServices> list = tServicesService.selectTServicesList(tServices);
        Date currentDate = LocalDateTimeUtils.convertLDToDate(LocalDate.now());
        for(int i = 0; i < list.size(); i++){
            TServices ts = list.get(i);
            if(ts.getAskEndTime().after(currentDate)){
                ts.setServiceStatus("3");
                tServicesService.updateTServices(ts);
            }

        }
    }
}
