package com.ruoyi.project.module.tss.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.ruoyi.project.module.tss.domain.TServices;

/**
 * 人才服务需求Service接口
 * 
 * @author warren
 * @date 2020-03-25
 */
public interface ITServicesService 
{
    /**
     * 查询人才服务需求列表
     *
     * @param tServices 人才服务需求
     * @return 人才服务需求集合
     */
    public List<TServices> selectTServicesList(TServices tServices);

    /**
     * 修改人才服务需求
     *
     * @param tServices 人才服务需求
     * @return 结果
     */
    public int updateTServices(TServices tServices);

    public int getDbCount();

    public int getBjCount();

    public int getZczbCount();

    public int getCszbCount();

    public int getDfpCount();

    public int getDpjCount();

    public String getSatisfactionDegree(String searchYear);

    public String getServiceCount(String searchYear);

}
