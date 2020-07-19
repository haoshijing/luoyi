/**
 * Copyright (C), $(YEAR),
 * FileName: ITServicesHeaderService
 * Author: zhangwei
 * Date: - 14:12
 * Description:
 * <author>     <time>      <version>      <desc>
 * 作者姓名    修改时间      版本号         描述
 */
package com.ruoyi.project.module.tss.service;

import com.ruoyi.project.module.tss.domain.TServices;

import java.util.List;

/**
 * ()
 * @author zhangwei
 * @create 2020/3/25
 * @since 1.0.0
 */
public interface ITServicesHeaderService {

    /**
     * 查询人才服务需求
     *
     * @param id 人才服务需求ID
     * @return 人才服务需求
     */
    public TServices selectHeaderTServicesById(Long id);

    /**
     * 查询人才服务需求列表
     *
     * @param tServices 人才服务需求
     * @return 人才服务需求集合
     */
    public List<TServices> selectHeaderTServicesList(TServices tServices);

    /**
     * 新增人才服务需求
     *
     * @param tServices 人才服务需求
     * @return 结果
     */
    public int insertHeaderTServices(TServices tServices);

    /**
     * 修改人才服务需求
     *
     * @param tServices 人才服务需求
     * @return 结果
     */
    public int updateHeaderTServices(TServices tServices);

    /**
     * 批量删除人才服务需求
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteHeaderTServicesByIds(String ids);

    /**
     * 删除人才服务需求信息
     *
     * @param id 人才服务需求ID
     * @return 结果
     */
    public int deleteHeaderTServicesById(Long id);

    /**
     * 满意度评价
     *
     * @param tServices 人才服务需求
     * @return 结果
     */
    public int evaluteHeaderTServices(TServices tServices);


}
