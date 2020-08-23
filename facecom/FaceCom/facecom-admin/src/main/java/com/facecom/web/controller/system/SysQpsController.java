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
import com.facecom.system.domain.SysQps;
import com.facecom.system.service.ISysQpsService;
import com.facecom.common.core.controller.BaseController;
import com.facecom.common.core.domain.AjaxResult;
import com.facecom.common.utils.poi.ExcelUtil;
import com.facecom.common.core.page.TableDataInfo;

/**
 * QPS监控Controller
 * 
 * @author facecom
 * @date 2020-08-12
 */
@Controller
@RequestMapping("/system/qps")
public class SysQpsController extends BaseController
{
    private String prefix = "system/qps";

    @Autowired
    private ISysQpsService sysQpsService;

    @RequiresPermissions("system:qps:view")
    @GetMapping()
    public String qps()
    {
        return prefix + "/qps";
    }

    /**
     * 查询QPS监控列表
     */
    @RequiresPermissions("system:qps:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysQps sysQps)
    {
        startPage();
        List<SysQps> list = sysQpsService.selectSysQpsList(sysQps);
        return getDataTable(list);
    }

    /**
     * 导出QPS监控列表
     */
    @RequiresPermissions("system:qps:export")
    @Log(title = "QPS监控", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysQps sysQps)
    {
        List<SysQps> list = sysQpsService.selectSysQpsList(sysQps);
        ExcelUtil<SysQps> util = new ExcelUtil<SysQps>(SysQps.class);
        return util.exportExcel(list, "qps");
    }

    /**
     * 新增QPS监控
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存QPS监控
     */
    @RequiresPermissions("system:qps:add")
    @Log(title = "QPS监控", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysQps sysQps)
    {
        return toAjax(sysQpsService.insertSysQps(sysQps));
    }

    /**
     * 修改QPS监控
     */
    @GetMapping("/edit/{qpsId}")
    public String edit(@PathVariable("qpsId") Long qpsId, ModelMap mmap)
    {
        SysQps sysQps = sysQpsService.selectSysQpsById(qpsId);
        mmap.put("sysQps", sysQps);
        return prefix + "/edit";
    }

    /**
     * 修改保存QPS监控
     */
    @RequiresPermissions("system:qps:edit")
    @Log(title = "QPS监控", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysQps sysQps)
    {
        return toAjax(sysQpsService.updateSysQps(sysQps));
    }

    /**
     * 删除QPS监控
     */
    @RequiresPermissions("system:qps:remove")
    @Log(title = "QPS监控", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sysQpsService.deleteSysQpsByIds(ids));
    }
}
