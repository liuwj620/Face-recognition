package com.facecom.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.facecom.system.mapper.SysInvokerMapper;
import com.facecom.system.domain.SysInvoker;
import com.facecom.system.service.ISysInvokerService;
import com.facecom.common.core.text.Convert;

/**
 * 调用日志Service业务层处理
 * 
 * @author disney
 * @date 2020-08-07
 */
@Service
public class SysInvokerServiceImpl implements ISysInvokerService 
{
    @Autowired
    private SysInvokerMapper sysInvokerMapper;

    /**
     * 查询调用日志
     * 
     * @param invokerId 调用日志ID
     * @return 调用日志
     */
    @Override
    public SysInvoker selectSysInvokerById(Long invokerId)
    {
        return sysInvokerMapper.selectSysInvokerById(invokerId);
    }

    /**
     * 查询调用日志列表
     * 
     * @param sysInvoker 调用日志
     * @return 调用日志
     */
    @Override
    public List<SysInvoker> selectSysInvokerList(SysInvoker sysInvoker)
    {
        return sysInvokerMapper.selectSysInvokerList(sysInvoker);
    }

    /**
     * 新增调用日志
     * 
     * @param sysInvoker 调用日志
     * @return 结果
     */
    @Override
    public int insertSysInvoker(SysInvoker sysInvoker)
    {
        return sysInvokerMapper.insertSysInvoker(sysInvoker);
    }

    /**
     * 修改调用日志
     * 
     * @param sysInvoker 调用日志
     * @return 结果
     */
    @Override
    public int updateSysInvoker(SysInvoker sysInvoker)
    {
        return sysInvokerMapper.updateSysInvoker(sysInvoker);
    }

    /**
     * 删除调用日志对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysInvokerByIds(String ids)
    {
        return sysInvokerMapper.deleteSysInvokerByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除调用日志信息
     * 
     * @param invokerId 调用日志ID
     * @return 结果
     */
    @Override
    public int deleteSysInvokerById(Long invokerId)
    {
        return sysInvokerMapper.deleteSysInvokerById(invokerId);
    }
}
