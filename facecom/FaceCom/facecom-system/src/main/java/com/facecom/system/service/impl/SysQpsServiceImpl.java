package com.facecom.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.facecom.system.mapper.SysQpsMapper;
import com.facecom.system.domain.SysQps;
import com.facecom.system.service.ISysQpsService;
import com.facecom.common.core.text.Convert;

/**
 * QPS监控Service业务层处理
 * 
 * @author facecom
 * @date 2020-08-12
 */
@Service
public class SysQpsServiceImpl implements ISysQpsService 
{
    @Autowired
    private SysQpsMapper sysQpsMapper;

    /**
     * 查询QPS监控
     * 
     * @param qpsId QPS监控ID
     * @return QPS监控
     */
    @Override
    public SysQps selectSysQpsById(Long qpsId)
    {
        return sysQpsMapper.selectSysQpsById(qpsId);
    }

    /**
     * 查询QPS监控列表
     * 
     * @param sysQps QPS监控
     * @return QPS监控
     */
    @Override
    public List<SysQps> selectSysQpsList(SysQps sysQps)
    {
        return sysQpsMapper.selectSysQpsList(sysQps);
    }

    /**
     * 新增QPS监控
     * 
     * @param sysQps QPS监控
     * @return 结果
     */
    @Override
    public int insertSysQps(SysQps sysQps)
    {
        return sysQpsMapper.insertSysQps(sysQps);
    }

    /**
     * 修改QPS监控
     * 
     * @param sysQps QPS监控
     * @return 结果
     */
    @Override
    public int updateSysQps(SysQps sysQps)
    {
        return sysQpsMapper.updateSysQps(sysQps);
    }

    /**
     * 删除QPS监控对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysQpsByIds(String ids)
    {
        return sysQpsMapper.deleteSysQpsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除QPS监控信息
     * 
     * @param qpsId QPS监控ID
     * @return 结果
     */
    @Override
    public int deleteSysQpsById(Long qpsId)
    {
        return sysQpsMapper.deleteSysQpsById(qpsId);
    }
}
