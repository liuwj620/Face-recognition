package com.facecom.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.facecom.common.annotation.Excel;
import com.facecom.common.core.domain.BaseEntity;

/**
 * QPS监控对象 sys_qps
 * 
 * @author facecom
 * @date 2020-08-12
 */
public class SysQps extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 表主键seq_sys_qps.nextval */
    private Long qpsId;

    /** 每秒钟request/事务 */
    @Excel(name = "每秒钟request/事务")
    private Double qps;

    /** 并发数 */
    @Excel(name = "并发数")
    private Integer occurs;

    /** 响应时间 */
    @Excel(name = "响应时间")
    private Integer responseTime;

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

    public void setQpsId(Long qpsId) 
    {
        this.qpsId = qpsId;
    }

    public Long getQpsId() 
    {
        return qpsId;
    }
    public void setQps(Double qps) 
    {
        this.qps = qps;
    }

    public Double getQps() 
    {
        return qps;
    }
    public void setOccurs(Integer occurs) 
    {
        this.occurs = occurs;
    }

    public Integer getOccurs() 
    {
        return occurs;
    }
    public void setResponseTime(Integer responseTime) 
    {
        this.responseTime = responseTime;
    }

    public Integer getResponseTime() 
    {
        return responseTime;
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
            .append("qpsId", getQpsId())
            .append("qps", getQps())
            .append("occurs", getOccurs())
            .append("responseTime", getResponseTime())
            .append("deptCode", getDeptCode())
            .append("deptName", getDeptName())
            .append("systemCode", getSystemCode())
            .append("systemName", getSystemName())
            .toString();
    }

	public SysQps(Double qps, Integer occurs, Integer responseTime, String deptCode, String deptName) {
		super();
		this.qps = qps;
		this.occurs = occurs;
		this.responseTime = responseTime;
		this.deptCode = deptCode;
		this.deptName = deptName;
	}

	public SysQps() {
		super();
	}
    
}
