package com.ruoyi.project.module.tss.service.impl;

import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.project.module.tss.domain.TServices;
import com.ruoyi.project.module.tss.mapper.TServicesMapper;
import com.ruoyi.project.module.tss.service.ITServicesAssignorService;
import com.ruoyi.project.module.tss.service.ITServicesService;
import com.ruoyi.project.module.tss.service.ITServicesAssignorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 人才服务需求Service业务层处理
 * 
 * @author warren
 * @date 2020-03-25
 */
@Service
public class TServicesAssignorServiceImpl implements ITServicesAssignorService
{
    @Autowired
    private TServicesMapper tServicesMapper;

    /**
     * 查询人才服务需求
     * 
     * @param id 人才服务需求ID
     * @return 人才服务需求
     */
    @Override
    public TServices selectAssignorTServicesById(Long id)
    {
        return tServicesMapper.selectTServicesById(id);
    }

    /**
     * 查询人才服务需求列表
     * 
     * @param tServices 人才服务需求
     * @return 人才服务需求
     */
    @Override
    public List<TServices> selectAssignorTServicesList(TServices tServices)
    {
        return tServicesMapper.selectTServicesList(tServices);
    }

    /**
     * 新增人才服务需求
     * 
     * @param tServices 人才服务需求
     * @return 结果
     */
    @Override
    public int insertAssignorTServices(TServices tServices)
    {
        return tServicesMapper.insertTServices(tServices);
    }

    /**
     * 评价人才服务
     * 
     * @param tServices 人才服务需求
     * @return 结果
     */
    @Override
    public int evaluteAssignorTServices(TServices tServices)
    {
        return tServicesMapper.updateTServices(tServices);
    }

    /**
     * 修改人才服务需求
     *
     * @param tServices 人才服务需求
     * @return 结果
     */
    @Override
    public int updateAssignorTServices(TServices tServices)
    {
        return tServicesMapper.updateTServices(tServices);
    }

    /**
     * 删除人才服务需求对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteAssignorTServicesByIds(String ids)
    {
        return tServicesMapper.deleteTServicesByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除人才服务需求信息
     * 
     * @param id 人才服务需求ID
     * @return 结果
     */
    @Override
    public int deleteAssignorTServicesById(Long id)
    {
        return tServicesMapper.deleteTServicesById(id);
    }
}
