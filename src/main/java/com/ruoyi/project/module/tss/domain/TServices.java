package com.ruoyi.project.module.tss.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 人才服务需求对象 t_services
 * 
 * @author warren
 * @date 2020-03-25
 */
public class TServices extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 唯一标识 */
    @Excel(name = "编号")
    private Long id;

    /** 服务编码 */
    @Excel(name = "服务编码")
    private String serviceNo;

    /** 工号 */
    @Excel(name = "工号")
    private String teacherNo;

    /** 人才姓名 */
    @Excel(name = "人才姓名")
    private String teacherName;

    /** 所在单位Id */
    @Excel(name = "所在单位Id")
    private String belongUnitNo;

    /** 所在单位名称 */
    @Excel(name = "所在单位名称")
    private String belongUnitName;

    /** 联系电话 */
    @Excel(name = "联系电话")
    private String phone;

    /** 服务提交时间 */
    @Excel(name = "服务提交时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date submitTime;

    /** 要求办结时间 */
    @Excel(name = "要求办结时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date askEndTime;

    /** 需求描述 */
    @Excel(name = "需求描述")
    private String description;

    /** 服务要求 */
    @Excel(name = "服务要求")
    private String demand;

    /** 分派人工号 */
    @Excel(name = "分派人工号")
    private String assignorNo;

    /** 分派人姓名 */
    @Excel(name = "分派人姓名")
    private String assignorName;

    /** 分派时间 */
    @Excel(name = "分派时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date assignTime;

    /** 办理要求 */
    @Excel(name = "办理要求")
    private String assignRemark;

    /** 处理单位id */
    @Excel(name = "牵头单位id")
    private String handleUnitNo;

    /** 处理单位名称 */
    @Excel(name = "牵头单位名称")
    private String handleUnitName;

    /** 处理人工号 */
    @Excel(name = "处理人工号")
    private String handlerNo;

    /** 处理人姓名 */
    @Excel(name = "处理人姓名")
    private String handlerName;

    /** 开始处理时间 */
    @Excel(name = "开始处理时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date handleTime;

    /** 协调处理单位名称 */
    @Excel(name = "协办单位名称")
    private String viceHandleUnitNo;

    /** 申请办结时间 */
    @Excel(name = "申请办结时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date applyEndTime;

    /** 服务办结时间 */
    @Excel(name = "服务办结时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date serviceEndTime;

    /** 满意度:满意、不满意、基本满意 */
    @Excel(name = "满意度")
    private String satisfactionDegree;

    /** 服务需求状态:待分派，待办理，超时再办，正常在办，正常办结 */
    @Excel(name = "服务需求状态")
    private String serviceStatus;

    /** 满意度理由 */
    @Excel(name = "满意度理由")
    private String satisfactionReason;

    /** 办理次数,本服务提交的次数 */
    @Excel(name = "办理次数")
    private Integer handleTimes;

    /** 逻辑删除标记 */
    private String delFlag;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setServiceNo(String serviceNo) 
    {
        this.serviceNo = serviceNo;
    }

    public String getServiceNo() 
    {
        return serviceNo;
    }
    public void setTeacherNo(String teacherNo) 
    {
        this.teacherNo = teacherNo;
    }

    public String getTeacherNo() 
    {
        return teacherNo;
    }
    public void setTeacherName(String teacherName) 
    {
        this.teacherName = teacherName;
    }

    public String getTeacherName() 
    {
        return teacherName;
    }
    public void setBelongUnitNo(String belongUnitNo) 
    {
        this.belongUnitNo = belongUnitNo;
    }

    public String getBelongUnitNo() 
    {
        return belongUnitNo;
    }
    public void setBelongUnitName(String belongUnitName) 
    {
        this.belongUnitName = belongUnitName;
    }

    public String getBelongUnitName() 
    {
        return belongUnitName;
    }
    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public String getPhone() 
    {
        return phone;
    }
    public void setSubmitTime(Date submitTime) 
    {
        this.submitTime = submitTime;
    }

    public Date getSubmitTime() 
    {
        return submitTime;
    }
    public void setAskEndTime(Date askEndTime) 
    {
        this.askEndTime = askEndTime;
    }

    public Date getAskEndTime() 
    {
        return askEndTime;
    }
    public void setDescription(String description) 
    {
        this.description = description;
    }

    public String getDescription() 
    {
        return description;
    }
    public void setDemand(String demand) 
    {
        this.demand = demand;
    }

    public String getDemand() 
    {
        return demand;
    }
    public void setAssignorNo(String assignorNo) 
    {
        this.assignorNo = assignorNo;
    }

    public String getAssignorNo() 
    {
        return assignorNo;
    }
    public void setAssignorName(String assignorName) 
    {
        this.assignorName = assignorName;
    }

    public String getAssignorName() 
    {
        return assignorName;
    }
    public void setAssignTime(Date assignTime) 
    {
        this.assignTime = assignTime;
    }

    public Date getAssignTime() 
    {
        return assignTime;
    }
    public void setAssignRemark(String assignRemark) 
    {
        this.assignRemark = assignRemark;
    }

    public String getAssignRemark() 
    {
        return assignRemark;
    }
    public void setHandleUnitNo(String handleUnitNo) 
    {
        this.handleUnitNo = handleUnitNo;
    }

    public String getHandleUnitNo() 
    {
        return handleUnitNo;
    }
    public void setHandleUnitName(String handleUnitName) 
    {
        this.handleUnitName = handleUnitName;
    }

    public String getHandleUnitName() 
    {
        return handleUnitName;
    }
    public void setHandlerNo(String handlerNo) 
    {
        this.handlerNo = handlerNo;
    }

    public String getHandlerNo() 
    {
        return handlerNo;
    }
    public void setHandlerName(String handlerName) 
    {
        this.handlerName = handlerName;
    }

    public String getHandlerName() 
    {
        return handlerName;
    }
    public void setApplyEndTime(Date applyEndTime) 
    {
        this.applyEndTime = applyEndTime;
    }

    public Date getHandleTime() { return handleTime; }

    public void setHandleTime(Date handleTime) { this.handleTime = handleTime; }

    public String getViceHandleUnitNo() {
        return viceHandleUnitNo;
    }

    public void setViceHandleUnitNo(String viceHandleUnitNo) {
        this.viceHandleUnitNo = viceHandleUnitNo;
    }

    public Date getApplyEndTime()
    {
        return applyEndTime;
    }
    public void setServiceEndTime(Date serviceEndTime) 
    {
        this.serviceEndTime = serviceEndTime;
    }

    public Date getServiceEndTime() 
    {
        return serviceEndTime;
    }
    public void setSatisfactionDegree(String satisfactionDegree) 
    {
        this.satisfactionDegree = satisfactionDegree;
    }

    public String getSatisfactionDegree() 
    {
        return satisfactionDegree;
    }
    public void setServiceStatus(String serviceStatus) 
    {
        this.serviceStatus = serviceStatus;
    }

    public String getServiceStatus() 
    {
        return serviceStatus;
    }
    public void setSatisfactionReason(String satisfactionReason) 
    {
        this.satisfactionReason = satisfactionReason;
    }

    public String getSatisfactionReason() 
    {
        return satisfactionReason;
    }
    public void setHandleTimes(Integer handleTimes)
    {
        this.handleTimes = handleTimes;
    }

    public Integer getHandleTimes()
    {
        return handleTimes;
    }
    public void setDelFlag(String delFlag) 
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag() 
    {
        return delFlag;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("serviceNo", getServiceNo())
            .append("teacherNo", getTeacherNo())
            .append("teacherName", getTeacherName())
            .append("belongUnitNo", getBelongUnitNo())
            .append("belongUnitName", getBelongUnitName())
            .append("phone", getPhone())
            .append("submitTime", getSubmitTime())
            .append("askEndTime", getAskEndTime())
            .append("description", getDescription())
            .append("demand", getDemand())
            .append("remark", getRemark())
            .append("assignorNo", getAssignorNo())
            .append("assignorName", getAssignorName())
            .append("assignTime", getAssignTime())
            .append("assignRemark", getAssignRemark())
            .append("handleUnitNo", getHandleUnitNo())
            .append("handleUnitName", getHandleUnitName())
            .append("handlerNo", getHandlerNo())
            .append("handlerName", getHandlerName())
            .append("handleTime", getHandleTime())
            .append("handlerName", getViceHandleUnitNo())
            .append("applyEndTime", getApplyEndTime())
            .append("serviceEndTime", getServiceEndTime())
            .append("satisfactionDegree", getSatisfactionDegree())
            .append("serviceStatus", getServiceStatus())
            .append("satisfactionReason", getSatisfactionReason())
            .append("handleTimes", getHandleTimes())
            .append("delFlag", getDelFlag())
            .toString();
    }
}
