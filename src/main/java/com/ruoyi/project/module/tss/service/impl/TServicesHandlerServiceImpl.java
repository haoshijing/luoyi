package com.ruoyi.project.module.tss.service.impl;

import com.alibaba.fastjson.JSONArray;
import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.project.module.tss.domain.Satisfaction;
import com.ruoyi.project.module.tss.domain.TServices;
import com.ruoyi.project.module.tss.mapper.TServicesMapper;
import com.ruoyi.project.module.tss.service.ITServicesHandlerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 人才服务需求Service业务层处理
 * 
 * @author warren
 * @date 2020-03-25
 */
@Service
public class TServicesHandlerServiceImpl implements ITServicesHandlerService
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
    public TServices selectHandlerTServicesById(Long id)
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
    public List<TServices> selectHandlerTServicesList(TServices tServices)
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
    public int insertHandlerTServices(TServices tServices)
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
    public int evaluteHandlerTServices(TServices tServices)
    {
        return tServicesMapper.updateTServices(tServices);
    }

    @Override
    public List<TServices> selectHandlerHandlingTServicesList(TServices tServices) {
        return tServicesMapper.selectHandlingTServicesList(tServices);
    }

    /**
     * 修改人才服务需求
     *
     * @param tServices 人才服务需求
     * @return 结果
     */
    @Override
    public int updateHandlerTServices(TServices tServices)
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
    public int deleteHandlerTServicesByIds(String ids)
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
    public int deleteHandlerTServicesById(Long id)
    {
        return tServicesMapper.deleteTServicesById(id);
    }

    @Override
    public int getDbCountByDept(String handleUnitNo) {
        return tServicesMapper.getDbCountByDept(handleUnitNo);
    }

    @Override
    public int getBjCountByDept(String handleUnitNo) {
        return tServicesMapper.getBjCountByDept(handleUnitNo);
    }

    @Override
    public int getZczbCountByDept(String handleUnitNo) {
        return tServicesMapper.getZczbCountByDept(handleUnitNo);
    }

    @Override
    public int getCszbCountByDept(String handleUnitNo) {
        return tServicesMapper.getCszbCountByDept(handleUnitNo);
    }

    @Override
    public int getDfpCountByDept(String handleUnitNo) {
        return tServicesMapper.getDfpCountByDept(handleUnitNo);
    }

    @Override
    public int getDpjCountByDept(String handleUnitNo) {
        return tServicesMapper.getDpjCountByDept(handleUnitNo);
    }

       /* return
     [
        {value:200, name:'满意'},
        {value:200, name:'基本满意'},
        {value:200, name:''}
        ];
        */

    @Override
    public String getSatisfactionDegreeByDept(String searchYear, String handleUnitNo) {

        int satisfaction = tServicesMapper.getSatisfactionCountByDept("0", searchYear, handleUnitNo);
        int basicSatisfaction = tServicesMapper.getSatisfactionCountByDept("1", searchYear, handleUnitNo);
        int disSatisfaction = tServicesMapper.getSatisfactionCountByDept("2", searchYear, handleUnitNo);

        Satisfaction sat1 = new Satisfaction();
        sat1.setValue(satisfaction);
        sat1.setName("满意");

        Satisfaction sat2 = new Satisfaction();
        sat2.setValue(basicSatisfaction);
        sat2.setName("基本满意");

        Satisfaction sat3 = new Satisfaction();
        sat3.setValue(disSatisfaction);
        sat3.setName("不满意");

        List<Satisfaction> list = new ArrayList<Satisfaction>();
        list.add(sat1);
        list.add(sat2);
        list.add(sat3);

        String pieData = JSONArray.toJSONString( list );


        return pieData;
    }

    @Override
    public String getServiceCountByDept(String searchYear, String handleUnitNo) {

        List<HashMap> listMap = tServicesMapper.getServiceCountByDept(searchYear, handleUnitNo);

        List<Integer> list = new ArrayList<>();
        for (int i=1;i<13;i++){
            int num=0;
            for(int j=0;j<listMap.size();j++){
                Map temp = listMap.get(j);
                if((int)temp.get("month") == i) {
                    long a = (long)temp.get("mounts");
                    num = (int)a;
                }
            }
            list.add(num);
        }

        String barData = JSONArray.toJSONString(list);
        return barData;
    }
}
