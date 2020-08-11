package com.facecom.system.service;

import java.util.List;
import com.facecom.system.domain.SysStatistics;

/**
 * 对比结果统计Service接口
 * 
 * @author facecom
 * @date 2020-08-07
 */
public interface ISysStatisticsService 
{
    /**
     * 查询对比结果统计
     * 
     * @param statisticsId 对比结果统计ID
     * @return 对比结果统计
     */
    public SysStatistics selectSysStatisticsById(Long statisticsId);

    /**
     * 查询对比结果统计列表
     * 
     * @param sysStatistics 对比结果统计
     * @return 对比结果统计集合
     */
    public List<SysStatistics> selectSysStatisticsList(SysStatistics sysStatistics);

    /**
     * 新增对比结果统计
     * 
     * @param sysStatistics 对比结果统计
     * @return 结果
     */
    public int insertSysStatistics(SysStatistics sysStatistics);

    /**
     * 修改对比结果统计
     * 
     * @param sysStatistics 对比结果统计
     * @return 结果
     */
    public int updateSysStatistics(SysStatistics sysStatistics);

    /**
     * 批量删除对比结果统计
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysStatisticsByIds(String ids);

    /**
     * 删除对比结果统计信息
     * 
     * @param statisticsId 对比结果统计ID
     * @return 结果
     */
    public int deleteSysStatisticsById(Long statisticsId);
}
