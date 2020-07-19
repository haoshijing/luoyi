package com.ruoyi.project.module.tss.service.impl;

import java.util.*;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.ruoyi.project.module.tss.domain.Satisfaction;
import javafx.beans.binding.IntegerBinding;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.module.tss.mapper.TServicesMapper;
import com.ruoyi.project.module.tss.domain.TServices;
import com.ruoyi.project.module.tss.service.ITServicesService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 人才服务需求Service业务层处理
 * 
 * @author warren
 * @date 2020-03-25
 */
@Service
public class TServicesServiceImpl implements ITServicesService 
{
    @Autowired
    private TServicesMapper tServicesMapper;

    /**
     * 查询人才服务需求列表
     *
     * @param tServices 人才服务需求
     * @return 人才服务需求
     */
    @Override
    public List<TServices> selectTServicesList(TServices tServices)
    {
        return tServicesMapper.selectTServicesList(tServices);
    }

    /**
     * 修改人才服务需求
     *
     * @param tServices 人才服务需求
     * @return 结果
     */
    @Override
    public int updateTServices(TServices tServices)
    {
        return tServicesMapper.updateTServices(tServices);
    }

    @Override
    public int getDbCount() {
        return tServicesMapper.getDbCount();
    }

    @Override
    public int getBjCount() {
        return tServicesMapper.getBjCount();
    }

    @Override
    public int getZczbCount() {
        return tServicesMapper.getZczbCount();
    }

    @Override
    public int getCszbCount() {
        return tServicesMapper.getCszbCount();
    }

    @Override
    public int getDfpCount() {
        return tServicesMapper.getDfpCount();
    }

    @Override
    public int getDpjCount() {
        return tServicesMapper.getDpjCount();
    }

       /* return
     [
        {value:200, name:'满意'},
        {value:200, name:'基本满意'},
        {value:200, name:''}
        ];
        */

    @Override
    public String getSatisfactionDegree(String searchYear) {

        int satisfaction = tServicesMapper.getSatisfactionCount("0", searchYear);
        int basicSatisfaction = tServicesMapper.getSatisfactionCount("1", searchYear);
        int disSatisfaction = tServicesMapper.getSatisfactionCount("2", searchYear);

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
    public String getServiceCount(String searchYear) {

        List<HashMap> listMap = tServicesMapper.getServiceCount(searchYear);

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
