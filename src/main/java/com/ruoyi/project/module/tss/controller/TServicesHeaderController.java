package com.ruoyi.project.module.tss.controller;

import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.module.tss.domain.TServices;
import com.ruoyi.project.module.tss.service.ITServicesHeaderService;
import com.ruoyi.project.module.tss.service.ITServicesService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 人才服务需求Controller
 * 
 * @author warren
 * @date 2020-03-25
 */
@Controller
@RequestMapping("/module/tss/header")
public class TServicesHeaderController extends BaseController
{
    private String prefix = "module/tss/header";

    @Autowired
    private ITServicesHeaderService tServicesHeaderService;

    @RequiresPermissions("module:tss:header:view")
    @GetMapping()
    public String tss()
    {
        return prefix + "/header";
    }

    /**
     * 查询人才服务需求列表
     */
    @RequiresPermissions("module:tss:header:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TServices tServices)
    {
        startPage();
        List<TServices> list = tServicesHeaderService.selectHeaderTServicesList(tServices);
        return getDataTable(list);
    }

    /**
     * 导出人才服务需求列表
     */
    @RequiresPermissions("module:tss:header:export")
    @Log(title = "人才服务需求", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TServices tServices)
    {
        List<TServices> list = tServicesHeaderService.selectHeaderTServicesList(tServices);
        ExcelUtil<TServices> util = new ExcelUtil<TServices>(TServices.class);
        return util.exportExcel(list, "tss");
    }

}
