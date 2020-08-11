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
import com.facecom.system.domain.SysInvoker;
import com.facecom.system.service.ISysInvokerService;
import com.facecom.common.core.controller.BaseController;
import com.facecom.common.core.domain.AjaxResult;
import com.facecom.common.utils.poi.ExcelUtil;
import com.facecom.common.core.page.TableDataInfo;

/**
 * 调用日志Controller
 * 
 * @author disney
 * @date 2020-08-07
 */
@Controller
@RequestMapping("/system/invoker")
public class SysInvokerController extends BaseController
{
    private String prefix = "system/invoker";

    @Autowired
    private ISysInvokerService sysInvokerService;

    @RequiresPermissions("system:invoker:view")
    @GetMapping()
    public String invoker()
    {
        return prefix + "/invoker";
    }

    /**
     * 查询调用日志列表
     */
    @RequiresPermissions("system:invoker:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysInvoker sysInvoker)
    {
        startPage();
        List<SysInvoker> list = sysInvokerService.selectSysInvokerList(sysInvoker);
        return getDataTable(list);
    }

    /**
     * 导出调用日志列表
     */
    @RequiresPermissions("system:invoker:export")
    @Log(title = "调用日志", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysInvoker sysInvoker)
    {
        List<SysInvoker> list = sysInvokerService.selectSysInvokerList(sysInvoker);
        ExcelUtil<SysInvoker> util = new ExcelUtil<SysInvoker>(SysInvoker.class);
        return util.exportExcel(list, "invoker");
    }

    /**
     * 新增调用日志
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存调用日志
     */
    @RequiresPermissions("system:invoker:add")
    @Log(title = "调用日志", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysInvoker sysInvoker)
    {
        return toAjax(sysInvokerService.insertSysInvoker(sysInvoker));
    }

    /**
     * 修改调用日志
     */
    @GetMapping("/edit/{invokerId}")
    public String edit(@PathVariable("invokerId") Long invokerId, ModelMap mmap)
    {
        SysInvoker sysInvoker = sysInvokerService.selectSysInvokerById(invokerId);
        mmap.put("sysInvoker", sysInvoker);
        return prefix + "/edit";
    }

    /**
     * 修改保存调用日志
     */
    @RequiresPermissions("system:invoker:edit")
    @Log(title = "调用日志", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysInvoker sysInvoker)
    {
        return toAjax(sysInvokerService.updateSysInvoker(sysInvoker));
    }

    /**
     * 删除调用日志
     */
    @RequiresPermissions("system:invoker:remove")
    @Log(title = "调用日志", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sysInvokerService.deleteSysInvokerByIds(ids));
    }
}
