package com.facecom.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.facecom.system.mapper.SysStatisticsMapper;
import com.facecom.system.domain.SysStatistics;
import com.facecom.system.service.ISysStatisticsService;
import com.facecom.common.core.text.Convert;

/**
 * 对比结果统计Service业务层处理
 * 
 * @author facecom
 * @date 2020-08-07
 */
@Service
public class SysStatisticsServiceImpl implements ISysStatisticsService 
{
    @Autowired
    private SysStatisticsMapper sysStatisticsMapper;

    /**
     * 查询对比结果统计
     * 
     * @param statisticsId 对比结果统计ID
     * @return 对比结果统计
     */
    @Override
    public SysStatistics selectSysStatisticsById(Long statisticsId)
    {
        return sysStatisticsMapper.selectSysStatisticsById(statisticsId);
    }

    /**
     * 查询对比结果统计列表
     * 
     * @param sysStatistics 对比结果统计
     * @return 对比结果统计
     */
    @Override
    public List<SysStatistics> selectSysStatisticsList(SysStatistics sysStatistics)
    {
        return sysStatisticsMapper.selectSysStatisticsList(sysStatistics);
    }

    /**
     * 新增对比结果统计
     * 
     * @param sysStatistics 对比结果统计
     * @return 结果
     */
    @Override
    public int insertSysStatistics(SysStatistics sysStatistics)
    {
        return sysStatisticsMapper.insertSysStatistics(sysStatistics);
    }

    /**
     * 修改对比结果统计
     * 
     * @param sysStatistics 对比结果统计
     * @return 结果
     */
    @Override
    public int updateSysStatistics(SysStatistics sysStatistics)
    {
        return sysStatisticsMapper.updateSysStatistics(sysStatistics);
    }

    /**
     * 删除对比结果统计对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysStatisticsByIds(String ids)
    {
        return sysStatisticsMapper.deleteSysStatisticsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除对比结果统计信息
     * 
     * @param statisticsId 对比结果统计ID
     * @return 结果
     */
    @Override
    public int deleteSysStatisticsById(Long statisticsId)
    {
        return sysStatisticsMapper.deleteSysStatisticsById(statisticsId);
    }
}
