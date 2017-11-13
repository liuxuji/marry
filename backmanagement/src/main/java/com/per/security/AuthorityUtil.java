package com.per.security;

import com.per.dao.po.admin.Admin;
import com.per.dao.po.admin.Role;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.List;

/**
 * Created this file:
 *
 * @author xiaobo.xiong
 * @Date 2017-11-13  13:20
 */
public class AuthorityUtil {
    private static final Logger log = LoggerFactory.getLogger(AuthorityUtil.class);

    public static String getLoginUsername() {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal != null) {
            if (principal instanceof UserDetails) {
                return ((UserDetails) principal).getUsername();
            } else {
                return principal.toString();
            }
        } else {
            return null;
        }
    }

    /**
     * 获取当前登录用户
     * @return
     */
    public static Admin getLoginUser() {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return principal instanceof Admin ? (Admin) principal : null;
    }


    /**
     * 判断当前用户是否拥有角色
     * @param roleName 角色名称
     * @return
     */
    public static boolean hasRole(String roleName) {
        if (roleName == null) {
            log.warn("roleName is null");
            return false;
        }

        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal == null || !(principal instanceof Admin)) {
            return false;
        }

        List<Role> roleList = ((Admin) principal).getRoles();
        if (roleList == null || roleList.isEmpty()) {
            return false;
        }

        for (Role role : roleList) {
            if (role != null && roleName.equals(role.getName())) {
                return true;
            }
        }

        return false;
    }
}
