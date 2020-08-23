package com.facecom.system.mapper;

import java.util.List;
import com.facecom.system.domain.SysQps;

/**
 * QPS监控Mapper接口
 * 
 * @author facecom
 * @date 2020-08-12
 */
public interface SysQpsMapper 
{
    /**
     * 查询QPS监控
     * 
     * @param qpsId QPS监控ID
     * @return QPS监控
     */
    public SysQps selectSysQpsById(Long qpsId);

    /**
     * 查询QPS监控列表
     * 
     * @param sysQps QPS监控
     * @return QPS监控集合
     */
    public List<SysQps> selectSysQpsList(SysQps sysQps);

    /**
     * 新增QPS监控
     * 
     * @param sysQps QPS监控
     * @return 结果
     */
    public int insertSysQps(SysQps sysQps);

    /**
     * 修改QPS监控
     * 
     * @param sysQps QPS监控
     * @return 结果
     */
    public int updateSysQps(SysQps sysQps);

    /**
     * 删除QPS监控
     * 
     * @param qpsId QPS监控ID
     * @return 结果
     */
    public int deleteSysQpsById(Long qpsId);

    /**
     * 批量删除QPS监控
     * 
     * @param qpsIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysQpsByIds(String[] qpsIds);
}
