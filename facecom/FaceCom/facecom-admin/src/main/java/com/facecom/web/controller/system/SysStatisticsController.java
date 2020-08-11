package com.facecom.web.controller.system;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.facecom.common.annotation.Log;
import com.facecom.common.enums.BusinessType;
import com.facecom.system.domain.SysStatistics;
import com.facecom.system.service.ISysStatisticsService;
import com.facecom.common.core.controller.BaseController;
import com.facecom.common.core.domain.AjaxResult;
import com.facecom.common.utils.poi.ExcelUtil;
import com.facecom.common.core.page.TableDataInfo;

/**
 * 对比结果统计Controller
 * 
 * @author facecom
 * @date 2020-08-07
 */
@Controller
@RequestMapping("/system/statistics")
public class SysStatisticsController extends BaseController
{
    private String prefix = "system/statistics";

    @Autowired
    private ISysStatisticsService sysStatisticsService;

    @RequiresPermissions("system:statistics:view")
    @GetMapping()
    public String statistics()
    {
        return prefix + "/statistics";
    }

    /**
     * 查询对比结果统计列表
     */
    @RequiresPermissions("system:statistics:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysStatistics sysStatistics)
    {
        startPage();
        List<SysStatistics> list = sysStatisticsService.selectSysStatisticsList(sysStatistics);
        return getDataTable(list);
    }

    /**
     * 导出对比结果统计列表
     */
    @RequiresPermissions("system:statistics:export")
    @Log(title = "对比结果统计", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysStatistics sysStatistics)
    {
        List<SysStatistics> list = sysStatisticsService.selectSysStatisticsList(sysStatistics);
        ExcelUtil<SysStatistics> util = new ExcelUtil<SysStatistics>(SysStatistics.class);
        return util.exportExcel(list, "statistics");
    }

    /**
     * 新增对比结果统计
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存对比结果统计
     */
    @RequiresPermissions("system:statistics:add")
    @Log(title = "对比结果统计", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysStatistics sysStatistics)
    {
        return toAjax(sysStatisticsService.insertSysStatistics(sysStatistics));
    }

    /**
     * 修改对比结果统计
     */
    @GetMapping("/edit/{statisticsId}")
    public String edit(@PathVariable("statisticsId") Long statisticsId, ModelMap mmap)
    {
        SysStatistics sysStatistics = sysStatisticsService.selectSysStatisticsById(statisticsId);
        mmap.put("sysStatistics", sysStatistics);
        return prefix + "/edit";
    }

    /**
     * 修改保存对比结果统计
     */
    @RequiresPermissions("system:statistics:edit")
    @Log(title = "对比结果统计", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysStatistics sysStatistics)
    {
        return toAjax(sysStatisticsService.updateSysStatistics(sysStatistics));
    }

    /**
     * 删除对比结果统计
     */
    @RequiresPermissions("system:statistics:remove")
    @Log(title = "对比结果统计", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sysStatisticsService.deleteSysStatisticsByIds(ids));
    }
}
