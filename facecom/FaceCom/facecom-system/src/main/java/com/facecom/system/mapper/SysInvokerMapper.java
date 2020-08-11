package com.facecom.system.mapper;

import java.util.List;
import com.facecom.system.domain.SysInvoker;

/**
 * 调用日志Mapper接口
 * 
 * @author disney
 * @date 2020-08-07
 */
public interface SysInvokerMapper 
{
    /**
     * 查询调用日志
     * 
     * @param invokerId 调用日志ID
     * @return 调用日志
     */
    public SysInvoker selectSysInvokerById(Long invokerId);

    /**
     * 查询调用日志列表
     * 
     * @param sysInvoker 调用日志
     * @return 调用日志集合
     */
    public List<SysInvoker> selectSysInvokerList(SysInvoker sysInvoker);

    /**
     * 新增调用日志
     * 
     * @param sysInvoker 调用日志
     * @return 结果
     */
    public int insertSysInvoker(SysInvoker sysInvoker);

    /**
     * 修改调用日志
     * 
     * @param sysInvoker 调用日志
     * @return 结果
     */
    public int updateSysInvoker(SysInvoker sysInvoker);

    /**
     * 删除调用日志
     * 
     * @param invokerId 调用日志ID
     * @return 结果
     */
    public int deleteSysInvokerById(Long invokerId);

    /**
     * 批量删除调用日志
     * 
     * @param invokerIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysInvokerByIds(String[] invokerIds);
}
