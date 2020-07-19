package com.ruoyi.project.module.tss.controller;

import com.ruoyi.common.utils.LocalDateTimeUtils;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.aspectj.lang.annotation.DataScope;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.module.tss.domain.TServices;
import com.ruoyi.project.module.tss.service.ITServicesHandlerService;
import com.ruoyi.project.system.user.domain.User;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * 人才服务需求Controller
 *
 * @author warren
 * @date 2020-03-25
 */
@Controller
@RequestMapping("/module/tss/handler")
public class TServicesHandlerController extends BaseController
{
    private String prefix = "module/tss/handler";
    //private String deptId = getSysUser().getDeptId().toString();

    @Autowired
    private ITServicesHandlerService tServicesHandlerService;

    @RequiresPermissions("module:tss:handler:view")
    @GetMapping("/handler")
    public String handler()
    {
        return prefix + "/handler";
    }

    @RequiresPermissions("module:tss:handler:view")
    @GetMapping("/handle")
    public String handle()
    {
        return prefix + "/handle";
    }

    @RequiresPermissions("module:tss:handler:view")
    @GetMapping("/apply")
    public String apply()
    {
        return prefix + "/apply";
    }

    @RequiresPermissions("module:tss:handler:view")
    @GetMapping("/overHandle")
    public String overHandle()
    {
        return prefix + "/overHandle";
    }

    @RequiresPermissions("module:tss:handler:view")
    @GetMapping("/timeoutHandle")
    public String timeoutHandle()
    {
        return prefix + "/timeoutHandle";
    }

    @RequiresPermissions("module:tss:handler:view")
    @GetMapping("/statics")
    public String tss()
    {
        return prefix + "/statics";
    }


    /**
     * 查询待办理服务需求列表
     */
    @RequiresPermissions("module:tss:handler:list")
    @PostMapping("/handleList")
    @ResponseBody
    public TableDataInfo handleList(TServices tServices)
    {
        startPage();
        String deptId = getSysUser().getDeptId().toString();
        tServices.setHandleUnitNo(deptId);
        tServices.setServiceStatus("1");
        List<TServices> list = tServicesHandlerService.selectHandlerTServicesList(tServices);
        return getDataTable(list);
    }

    /**
     * 查询申请办结服务需求列表
     */
    @RequiresPermissions("module:tss:handler:list")
    @PostMapping("/applyList")
    @ResponseBody
    public TableDataInfo applyList(TServices tServices)
    {
        startPage();
        String deptId = getSysUser().getDeptId().toString();
        tServices.setHandleUnitNo(deptId);
        tServices.setServiceStatus("2");
        List<TServices> list = tServicesHandlerService.selectHandlerTServicesList(tServices);
        return getDataTable(list);
    }

    /**
     * 查询超时在办服务需求列表
     */
    @RequiresPermissions("module:tss:handler:list")
    @PostMapping("/timeoutHandleList")
    @ResponseBody
    public TableDataInfo timeoutList(TServices tServices)
    {
        startPage();
        String deptId = getSysUser().getDeptId().toString();
        tServices.setHandleUnitNo(deptId);
        tServices.setServiceStatus("3");
        List<TServices> list = tServicesHandlerService.selectHandlerTServicesList(tServices);
        return getDataTable(list);
    }

    /**
     * 查询已办结服务需求列表
     */
    @RequiresPermissions("module:tss:handler:list")
    @PostMapping("/overHandleList")
    @ResponseBody
    public TableDataInfo overHandleList(TServices tServices)
    {
        startPage();
        String deptId = getSysUser().getDeptId().toString();
        tServices.setHandleUnitNo(deptId);
        tServices.setServiceStatus("4");
        List<TServices> list = tServicesHandlerService.selectHandlerTServicesList(tServices);
        return getDataTable(list);
    }

    /**
     * 查询全部得服务需求列表
     */
    @RequiresPermissions("module:tss:handler:list")
    @PostMapping("/handlerList")
    @ResponseBody
    public TableDataInfo handlerList(TServices tServices)
    {
        startPage();
        String deptId = getSysUser().getDeptId().toString();
        tServices.setHandleUnitNo(deptId);
        List<TServices> list = tServicesHandlerService.selectHandlerTServicesList(tServices);
        return getDataTable(list);
    }


    /**
     * 导出人才服务需求列表
     */
    @RequiresPermissions("module:tss:handler:export")
    @Log(title = "人才服务需求", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TServices tServices)
    {
        String deptId = getSysUser().getDeptId().toString();
        tServices.setHandleUnitNo(deptId);
        List<TServices> list = tServicesHandlerService.selectHandlerTServicesList(tServices);
        ExcelUtil<TServices> util = new ExcelUtil<TServices>(TServices.class);
        return util.exportExcel(list, "服务需求数据");
    }


    /**
     * 服务任务分派
     */
    @GetMapping("/handle/edit/{id}")
    public String handle(@PathVariable("id") Long id, ModelMap mmap)
    {

        TServices tServices = tServicesHandlerService.selectHandlerTServicesById(id);
        mmap.put("tServices", tServices);
        return prefix + "/handle/edit";
    }

    /**
     * 用户状态修改
     */
    @Log(title = "服务状态在办", businessType = BusinessType.UPDATE)
    @RequiresPermissions("module:tss:handler:edit")
    @PostMapping("/changeStatus")
    @ResponseBody
    public AjaxResult changeStatus(TServices tServices)
    {
        Date currentDate = LocalDateTimeUtils.convertLDToDate(LocalDate.now());
        int times = tServicesHandlerService.selectHandlerTServicesById(tServices.getId()).getHandleTimes();
        times += 1;
        tServices.setHandleTimes(times);
        tServices.setHandleTime(currentDate);
        return toAjax(tServicesHandlerService.updateHandlerTServices(tServices));
    }

    @Log(title = "服务申请办结", businessType = BusinessType.UPDATE)
    @RequiresPermissions("module:tss:handler:edit")
    @PostMapping("/applyEnd")
    @ResponseBody
    public AjaxResult applyEnd(TServices tServices)
    {
        Date currentDate = LocalDateTimeUtils.convertLDToDate(LocalDate.now());
        tServices.setApplyEndTime(currentDate);
        return toAjax(tServicesHandlerService.updateHandlerTServices(tServices));
    }

    /**
     * 服务任务分派
     */
    @RequiresPermissions("module:tss:handler:edit")
    @Log(title = "服务需求办结申请", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult handleSave(TServices tServices)
    {
        // 取身份信息

        Date currentDate = LocalDateTimeUtils.convertLDToDate(LocalDate.now());
        tServices.setAssignTime(currentDate);
        return toAjax(tServicesHandlerService.updateHandlerTServices(tServices));
    }

    @RequiresPermissions("module:tss:handler:list")
    @GetMapping("/getStaticsInfo")
    @ResponseBody
    public AjaxResult getStaticsInfo()
    {
        AjaxResult ajax = AjaxResult.success();
        String deptId = getSysUser().getDeptId().toString();

        ajax.put("dbCount", tServicesHandlerService.getDbCountByDept(deptId));
        ajax.put("bjCount", tServicesHandlerService.getBjCountByDept(deptId));
        ajax.put("zczbCount", tServicesHandlerService.getZczbCountByDept(deptId));
        ajax.put("cszbCount", tServicesHandlerService.getCszbCountByDept(deptId));


        return ajax;
    }


    @RequiresPermissions("module:tss:handler:list")
    @GetMapping("/getSatisfactionDegree")
    @ResponseBody
    public AjaxResult getSatisfactionDegree(@RequestParam Map<String, Object> params){

        String searchYear = params.get("searchYear").toString();
        String deptId = getSysUser().getDeptId().toString();
        String pieData = tServicesHandlerService.getSatisfactionDegreeByDept(searchYear, deptId);

        AjaxResult ajax = AjaxResult.success();
        ajax.put("pieData",pieData);
        return ajax;
    }


    @RequiresPermissions("module:tss:handler:list")
    @GetMapping("/getServiceCount")
    @ResponseBody
    public AjaxResult getServiceCount(@RequestParam Map<String, Object> params){
        String searchYear = params.get("searchYear").toString();
        String deptId = getSysUser().getDeptId().toString();
        String barData = tServicesHandlerService.getServiceCountByDept(searchYear, deptId);
        AjaxResult ajax = AjaxResult.success();
        ajax.put("barData", barData);
        return ajax;
    }
}
