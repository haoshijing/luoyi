package com.ruoyi.project.module.tss.mapper;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import com.ruoyi.project.module.tss.domain.TServices;
import org.apache.ibatis.annotations.Param;

/**
 * 人才服务需求Mapper接口
 * 
 * @author warren
 * @date 2020-03-25
 */
public interface TServicesMapper 
{
    /**
     * 查询人才服务需求
     * 
     * @param id 人才服务需求ID
     * @return 人才服务需求
     */
    public TServices selectTServicesById(Long id);

    /**
     * 查询人才服务需求列表
     * 
     * @param tServices 人才服务需求
     * @return 人才服务需求集合
     */
    public List<TServices> selectTServicesList(TServices tServices);


    public List<TServices> selectHandlingTServicesList(TServices tServices);

    /**
     * 查询个人服务需求列表
     *
     * @param tServices 人才服务需求
     * @return 人才服务需求集合
     */
    // List<TServices> selectTalentTServicesList(TServices tServices);

    /**
     * 新增人才服务需求
     * 
     * @param tServices 人才服务需求
     * @return 结果
     */
    public int insertTServices(TServices tServices);

    /**
     * 修改人才服务需求
     * 
     * @param tServices 人才服务需求
     * @return 结果
     */
    public int updateTServices(TServices tServices);

    /**
     * 删除人才服务需求
     * 
     * @param id 人才服务需求ID
     * @return 结果
     */
    public int deleteTServicesById(Long id);

    /**
     * 批量删除人才服务需求
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTServicesByIds(String[] ids);


    public int getDbCount();

    public int getBjCount();

    public int getZczbCount();

    public int getCszbCount();

    public int getDfpCount();

    public int getDpjCount();

    public int getSatisfactionCount(@Param("satisfactionDegree")String s, @Param("submitTime")String searchYear);

    public List<HashMap> getServiceCount(@Param("submitTime")String searchYear);


    public int getDbCountByDept(@Param("handleUnitNo")String handleUnitNo);

    public int getBjCountByDept(@Param("handleUnitNo")String handleUnitNo);

    public int getZczbCountByDept(@Param("handleUnitNo")String handleUnitNo);

    public int getCszbCountByDept(@Param("handleUnitNo")String handleUnitNo);

    public int getDfpCountByDept(@Param("handleUnitNo")String handleUnitNo);

    public int getDpjCountByDept(@Param("handleUnitNo")String handleUnitNo);

    public int getSatisfactionCountByDept(@Param("satisfactionDegree")String s, @Param("submitTime")String searchYear, @Param("handleUnitNo")String handleUnitNo);

    public List<HashMap> getServiceCountByDept(@Param("submitTime")String searchYear, @Param("handleUnitNo")String handleUnitNo);

}
