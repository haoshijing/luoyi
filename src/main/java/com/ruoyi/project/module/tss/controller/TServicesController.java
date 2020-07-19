package com.ruoyi.project.module.tss.controller;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.ruoyi.common.utils.CodeGenerator;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.LocalDateTimeUtils;
import com.ruoyi.common.utils.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.project.module.tss.domain.TServices;
import com.ruoyi.project.module.tss.service.ITServicesService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

import javax.servlet.http.HttpServletResponse;

/**
 * 人才服务需求Controller
 * 
 * @author warren
 * @date 2020-03-25
 */
@Controller
@RequestMapping("/module/tss")
public class TServicesController extends BaseController
{
    private String prefix = "module/tss";

    @Autowired
    private ITServicesService tServicesService;

    @RequiresPermissions("module:tss:view")
    @GetMapping("/statics")
    public String tss()
    {
        return prefix + "/statics";
    }


    /**
     * 查询人才服务需求列表
     */
    @RequiresPermissions("module:tss:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TServices tServices)
    {
        startPage();
        List<TServices> list = tServicesService.selectTServicesList(tServices);
        return getDataTable(list);
    }

    @RequiresPermissions("module:tss:view")
    @GetMapping("/normalHandle")
    public String normalHandle()
    {
        return prefix + "/normalHandle";
    }

    @RequiresPermissions("module:tss:view")
    @GetMapping("/timeoutHandle")
    public String timeoutHandle()
    {
        return prefix + "/timeoutHandle";
    }

    @RequiresPermissions("module:tss:view")
    @GetMapping("/overHandle")
    public String overHandle()
    {
        return prefix + "/overHandle";
    }

    @RequiresPermissions("module:tss:view")
    @GetMapping("/unevaluate")
    public String unevaluate()
    {
        return prefix + "/unevaluate";
    }

    @RequiresPermissions("module:tss:view")
    @GetMapping("/unhandle")
    public String unhandle()
    {
        return prefix + "/unhandle";
    }



    /**
     * 查询正常在办需求列表
     */
    @RequiresPermissions("module:tss:list")
    @PostMapping("/normalHandlelist")
    @ResponseBody
    public TableDataInfo normalHandlelist(TServices tServices)
    {
        startPage();
        tServices.setServiceStatus("2");
        List<TServices> list = tServicesService.selectTServicesList(tServices);
        return getDataTable(list);
    }

    /**
     * 查询超时在办需求列表
     */
    @RequiresPermissions("module:tss:list")
    @PostMapping("/timeoutHandlelist")
    @ResponseBody
    public TableDataInfo timeoutHandlelist(TServices tServices)
    {
        startPage();
        tServices.setServiceStatus("3");
        List<TServices> list = tServicesService.selectTServicesList(tServices);
        return getDataTable(list);
    }

    /**
     * 查询正常办结需求列表
     */
    @RequiresPermissions("module:tss:list")
    @PostMapping("/overHandlelist")
    @ResponseBody
    public TableDataInfo overHandlelist(TServices tServices)
    {
        startPage();
        tServices.setServiceStatus("4");
        List<TServices> list = tServicesService.selectTServicesList(tServices);
        return getDataTable(list);
    }


    /**
     * 查询待评价需求列表
     */
    @RequiresPermissions("module:tss:list")
    @PostMapping("/unevaluatelist")
    @ResponseBody
    public TableDataInfo unevaluatelist(TServices tServices)
    {
        startPage();
        tServices.setServiceStatus("5");
        List<TServices> list = tServicesService.selectTServicesList(tServices);
        return getDataTable(list);
    }

    /**
     * 查询待处理需求列表
     */
    @RequiresPermissions("module:tss:list")
    @PostMapping("/unhandlelist")
    @ResponseBody
    public TableDataInfo unhandlelist(TServices tServices)
    {
        startPage();
        tServices.setServiceStatus("1");
        List<TServices> list = tServicesService.selectTServicesList(tServices);
        return getDataTable(list);
    }


    @RequiresPermissions("module:tss:list")
    @GetMapping("/getStaticsInfo")
    @ResponseBody
    public AjaxResult getStaticsInfo()
    {
        AjaxResult ajax = AjaxResult.success();
        String deptId = getSysUser().getDeptId().toString();

        ajax.put("dbCount", tServicesService.getDbCount());
        ajax.put("bjCount", tServicesService.getBjCount());
        ajax.put("zczbCount", tServicesService.getZczbCount());
        ajax.put("cszbCount", tServicesService.getCszbCount());


        return ajax;
    }


    @RequiresPermissions("module:tss:list")
    @GetMapping("/getSatisfactionDegree")
    @ResponseBody
    public AjaxResult getSatisfactionDegree(@RequestParam Map<String, Object> params){

        String searchYear = params.get("searchYear").toString();
        String pieData = tServicesService.getSatisfactionDegree(searchYear);

        AjaxResult ajax = AjaxResult.success();
        ajax.put("pieData",pieData);
        return ajax;
    }


    @RequiresPermissions("module:tss:list")
    @GetMapping("/getServiceCount")
    @ResponseBody
    public AjaxResult getServiceCount(@RequestParam Map<String, Object> params){
        String searchYear = params.get("searchYear").toString();
        String barData = tServicesService.getServiceCount(searchYear);
        AjaxResult ajax = AjaxResult.success();
        ajax.put("barData", barData);
        return ajax;
    }

}
