package com.facecom.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.facecom.common.annotation.Excel;
import com.facecom.common.core.domain.BaseEntity;

/**
 * 对比结果统计对象 sys_statistics
 * 
 * @author facecom
 * @date 2020-08-07
 */
public class SysStatistics extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 表主键seq_sys_statistics.nextval */
    private Long statisticsId;

    /** 通过人数 */
    @Excel(name = "通过人数")
    private Long fail;

    /** 不通过人数 */
    @Excel(name = "不通过人数")
    private Long nofail;

    /** 通过率 */
    @Excel(name = "通过率")
    private Long failPass;

    /** 不通过率 */
    @Excel(name = "不通过率")
    private Long nofailPass;

    /** 对比参数 */
    @Excel(name = "对比参数")
    private String contrast;

    /** 部门编号 */
    @Excel(name = "部门编号")
    private String deptCode;

    /** 部门名称 */
    @Excel(name = "部门名称")
    private String deptName;

    /** 系统编号 */
    @Excel(name = "系统编号")
    private String systemCode;

    /** 系统名称 */
    @Excel(name = "系统名称")
    private String systemName;

    public void setStatisticsId(Long statisticsId) 
    {
        this.statisticsId = statisticsId;
    }

    public Long getStatisticsId() 
    {
        return statisticsId;
    }
    public void setFail(Long fail) 
    {
        this.fail = fail;
    }

    public Long getFail() 
    {
        return fail;
    }
    public void setNofail(Long nofail) 
    {
        this.nofail = nofail;
    }

    public Long getNofail() 
    {
        return nofail;
    }
    public void setFailPass(Long failPass) 
    {
        this.failPass = failPass;
    }

    public Long getFailPass() 
    {
        return failPass;
    }
    public void setNofailPass(Long nofailPass) 
    {
        this.nofailPass = nofailPass;
    }

    public Long getNofailPass() 
    {
        return nofailPass;
    }
    public void setContrast(String contrast) 
    {
        this.contrast = contrast;
    }

    public String getContrast() 
    {
        return contrast;
    }
    public void setDeptCode(String deptCode) 
    {
        this.deptCode = deptCode;
    }

    public String getDeptCode() 
    {
        return deptCode;
    }
    public void setDeptName(String deptName) 
    {
        this.deptName = deptName;
    }

    public String getDeptName() 
    {
        return deptName;
    }
    public void setSystemCode(String systemCode) 
    {
        this.systemCode = systemCode;
    }

    public String getSystemCode() 
    {
        return systemCode;
    }
    public void setSystemName(String systemName) 
    {
        this.systemName = systemName;
    }

    public String getSystemName() 
    {
        return systemName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("statisticsId", getStatisticsId())
            .append("fail", getFail())
            .append("nofail", getNofail())
            .append("failPass", getFailPass())
            .append("nofailPass", getNofailPass())
            .append("contrast", getContrast())
            .append("deptCode", getDeptCode())
            .append("deptName", getDeptName())
            .append("systemCode", getSystemCode())
            .append("systemName", getSystemName())
            .toString();
    }
}
