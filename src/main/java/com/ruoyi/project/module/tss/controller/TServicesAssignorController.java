package com.ruoyi.project.module.tss.controller;

import com.ruoyi.common.utils.CodeGenerator;
import com.ruoyi.common.utils.LocalDateTimeUtils;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.framework.aspectj.lang.annotation.DataScope;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.module.tss.domain.TServices;
import com.ruoyi.project.module.tss.service.ITServicesAssignorService;
import com.ruoyi.project.module.tss.service.ITServicesService;
import com.ruoyi.project.module.tss.service.ITServicesAssignorService;
import com.ruoyi.project.system.dept.domain.Dept;
import com.ruoyi.project.system.dept.service.IDeptService;
import com.ruoyi.project.system.post.domain.Post;
import com.ruoyi.project.system.user.domain.User;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 人才服务需求Controller
 *
 * @author warren
 * @date 2020-03-25
 */
@Controller
@RequestMapping("/module/tss/assignor")
public class TServicesAssignorController extends BaseController
{
    private String prefix = "module/tss/assignor";

    @Autowired
    private ITServicesAssignorService tServicesAssignorService;

    @Autowired
    private IDeptService deptService;

    @RequiresPermissions("module:tss:assignor:view")
    @GetMapping()
    public String Assignor()
    {
        return prefix + "/assignor";
    }

    @RequiresPermissions("module:tss:assignor:view")
    @GetMapping("/assign")
    public String assignorAssign()
    {
        return prefix + "/assign/assign";
    }


    /**
     * 查询人才服务需求列表
     */
    @RequiresPermissions("module:tss:assignor:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TServices tServices)
    {
        startPage();
        List<TServices> list = tServicesAssignorService.selectAssignorTServicesList(tServices);
        return getDataTable(list);
    }

    /**
     * 查询需分派得服务需求列表
     */
    @RequiresPermissions("module:tss:assignor:list")
    @PostMapping("/assign/list")
    @ResponseBody
    public TableDataInfo assignList(TServices tServices)
    {
        startPage();
        tServices.setServiceStatus("0");
        List<TServices> list = tServicesAssignorService.selectAssignorTServicesList(tServices);
        return getDataTable(list);
    }

    /**
     * 导出人才服务需求列表
     */
    @RequiresPermissions("module:tss:assignor:export")
    @Log(title = "人才服务需求", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TServices tServices)
    {
        List<TServices> list = tServicesAssignorService.selectAssignorTServicesList(tServices);
        ExcelUtil<TServices> util = new ExcelUtil<TServices>(TServices.class);
        return util.exportExcel(list, "服务需求数据");
    }


    /**
     * 服务任务分派
     */
    @GetMapping("/assign/edit/{id}")
    public String assign(@PathVariable("id") Long id, Dept dept, ModelMap mmap)
    {
        TServices tServices = tServicesAssignorService.selectAssignorTServicesById(id);

        String[] viceHandleArr = tServices.getViceHandleUnitNo().split(",");

        List<Dept> deptList = deptService.selectDeptList(dept);

        for (Dept deptItem : deptList)
        {
            for (String viceHandleNo : viceHandleArr)
            {


                if (deptItem.getDeptId().toString().equals(viceHandleNo))
                {
                    deptItem.setFlag(true);
                    break;
                }
            }
        }

        mmap.put("depts", deptList);
        mmap.put("tServices", tServices);
        return prefix + "/assign/edit";
    }

    /**
     * 服务任务分派
     */
    @RequiresPermissions("module:tss:assignor:edit")
    @Log(title = "服务需求分派", businessType = BusinessType.UPDATE)
    @PostMapping("/assign/edit")
    @ResponseBody
    public AjaxResult assignSave(TServices tServices)
    {
        // 取身份信息
        User user = getSysUser();
        String teacherNo = user.getLoginName();
        String teacherName = user.getUserName();

        Date currentDate = LocalDateTimeUtils.convertLDToDate(LocalDate.now());

        tServices.setAssignorNo(teacherNo);
        tServices.setAssignorName(teacherName);
        tServices.setAssignTime(currentDate);

        return toAjax(tServicesAssignorService.updateAssignorTServices(tServices));
    }
}
