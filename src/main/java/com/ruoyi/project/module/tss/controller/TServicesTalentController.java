package com.ruoyi.project.module.tss.controller;

import java.util.ArrayList;
import java.util.List;

import com.ruoyi.common.utils.CodeGenerator;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.framework.aspectj.lang.annotation.DataScope;
import com.ruoyi.project.module.tss.service.ITServicesTalentService;
import com.ruoyi.project.system.user.domain.User;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.project.module.tss.domain.TServices;
import com.ruoyi.project.module.tss.service.ITServicesService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

import java.util.Date;

/**
 * 人才服务需求Controller
 *
 * @author warren
 * @date 2020-03-25
 */
@Controller
@RequestMapping("/module/tss/talent")
public class TServicesTalentController extends BaseController
{
    private String prefix = "module/tss/talent";

    @Autowired
    private ITServicesTalentService tServicesTalentService;

    @RequiresPermissions("module:tss:talent:view")
    @GetMapping()
    public String talent()
    {
        return prefix + "/talent";
    }

    @RequiresPermissions("module:tss:talent:view")
    @GetMapping("/evaluate")
    public String talentEvaluate()
    {
        return prefix + "/evaluate/evaluate";
    }

    @RequiresPermissions("module:tss:talent:view")
    @GetMapping("/handling")
    public String handling()
    {
        return prefix + "/handling";
    }

    @RequiresPermissions("module:tss:talent:view")
    @GetMapping("/applying")
    public String applying()
    {
        return prefix + "/applying";
    }

    /**
     * 查询人才服务需求列表
     */
    @RequiresPermissions("module:tss:talent:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TServices tServices)
    {
        startPage();
        tServices.setTeacherNo(getSysUser().getLoginName());
        List<TServices> list = tServicesTalentService.selectTalentTServicesList(tServices);
        return getDataTable(list);
    }

    /**
     * 查询申请服务需求列表
     */
    @RequiresPermissions("module:tss:talent:list")
    @PostMapping("/applyingList")
    @ResponseBody
    public TableDataInfo applyingList(TServices tServices)
    {
        startPage();
        tServices.setTeacherNo(getSysUser().getLoginName());
        tServices.setServiceStatus("0");
        List<TServices> list = tServicesTalentService.selectTalentTServicesList(tServices);
        return getDataTable(list);
    }

    @RequiresPermissions("module:tss:talent:list")
    @PostMapping("/handlingList")
    @ResponseBody
    public TableDataInfo handlingList(TServices tServices)
    {
        startPage();
        tServices.setTeacherNo(getSysUser().getLoginName());
        List<TServices> list = tServicesTalentService.selectTalentHandlingTServicesList(tServices);
        return getDataTable(list);
    }

    /**
     * 查询需评价得服务需求列表
     */
    @RequiresPermissions("module:tss:talent:list")
    @PostMapping("/evaluate/list")
    @ResponseBody
    public TableDataInfo evaluateList(TServices tServices)
    {
        startPage();
        tServices.setTeacherNo(getSysUser().getLoginName());
        tServices.setServiceStatus("5");
        List<TServices> list = tServicesTalentService.selectTalentTServicesList(tServices);
        return getDataTable(list);
    }

    /**
     * 导出人才服务需求列表
     */
    @RequiresPermissions("module:tss:talent:export")
    @Log(title = "人才服务需求", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TServices tServices)
    {
        tServices.setTeacherNo(getSysUser().getLoginName());
        List<TServices> list = tServicesTalentService.selectTalentTServicesList(tServices);
        ExcelUtil<TServices> util = new ExcelUtil<TServices>(TServices.class);
        return util.exportExcel(list, "服务需求数据");
    }

    /**
     * 新增人才服务需求
     */
    @GetMapping("/add")
    public String add(ModelMap mmap)
    {
        // 取身份信息
        User user = getSysUser();
        String teacherNo = user.getLoginName();
        String teacherName = user.getUserName();
        String belongUnitNo = Convert.toStr(user.getDept().getDeptId());
        String belongUnitName = user.getDept().getDeptName();
        String phone = user.getPhonenumber();


        TServices tServices = new TServices();
        tServices.setServiceNo(CodeGenerator.generate());
        tServices.setTeacherNo(teacherNo);
        tServices.setTeacherName(teacherName);
        tServices.setBelongUnitNo(belongUnitNo);
        tServices.setBelongUnitName(belongUnitName);
        tServices.setPhone(phone);

        mmap.put("tServices", tServices);

        return prefix + "/add";
    }

    /**
     * 新增保存人才服务需求
     */
    @RequiresPermissions("module:tss:talent:add")
    @Log(title = "人才服务需求", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TServices tServices)
    {
        tServices.setServiceStatus("0");
        tServices.setHandleTimes(0);
        return toAjax(tServicesTalentService.insertTalentTServices(tServices));
    }

    /**
     * 修改人才服务需求
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TServices tServices = tServicesTalentService.selectTalentTServicesById(id);
        mmap.put("tServices", tServices);
        return prefix + "/edit";
    }

    /**
     * 修改人才服务需求
     */
    @RequiresPermissions("module:tss:talent:edit")
    @Log(title = "人才服务需求", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TServices tServices)
    {
        return toAjax(tServicesTalentService.updateTalentTServices(tServices));
    }

    /**
     * 满意度评价
     */
    @GetMapping("/evaluate/edit/{id}")
    public String evaluate(@PathVariable("id") Long id, ModelMap mmap)
    {
        TServices tServices = tServicesTalentService.selectTalentTServicesById(id);
        mmap.put("tServices", tServices);
        return prefix + "/evaluate/edit";
    }

    /**
     * 满意度评价
     */
    @RequiresPermissions("module:tss:talent:edit")
    @Log(title = "人才服务需求", businessType = BusinessType.UPDATE)
    @PostMapping("/evaluate/edit")
    @ResponseBody
    public AjaxResult evaluateSave(TServices tServices)
    {
        return toAjax(tServicesTalentService.updateTalentTServices(tServices));
    }


    /**
     * 删除人才服务需求
     */
    @RequiresPermissions("module:tss:talent:remove")
    @Log(title = "人才服务需求", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(tServicesTalentService.deleteTalentTServicesByIds(ids));
    }
}
