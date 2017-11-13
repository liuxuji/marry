package com.per.dao.po.admin;

import com.alibaba.dubbo.common.utils.CollectionUtils;
import com.alibaba.dubbo.common.utils.StringUtils;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created this file:
 *  后台控制登录用户类--权限控制
 *  ORM：Object Relational Mapping 对象关系映射(主流的mybatis、hibernate都是用这种思想)
 *  UserDetails：spring.security中的接口,这里进行实现，通过spring.security实现权限分离
 * @Author xiaobo.xiong
 * @Date 2017-11-8  10:04
 */

@Table(name = "adm_admin")
@Entity
public class Admin implements UserDetails{

    /**@Column 注解 标识通过ORM映射到数据库中表字段的名称
     * @Id 注解 标识唯一主键*/
    @Id
    @Column(nullable = false,length = 40)
    private String userLoginName;

    @Column(nullable = false,length = 40)
    private String password;

    @Column(nullable = false)
    private boolean enabled = Boolean.TRUE;

    @Column(length = 40,nullable = false)
    private String name;

    @Column(length = 50)
    private String email;

    @Column(length = 20)
    private String mobile;

    @Column(length = 40)
    private String permitIP;

    @Column(length = 50)
    private String msn;

    @Column(length = 20)
    private String qq;

    @Column(nullable = false)
    private Date createDate;

    @Column(length = 40, nullable = false)
    private String createBy;

    @Column
    private String channelId;
    @Column
    private String portrait;

    /**
     * JPA定义的实体间关系有：@OneToOne/@OneToMay/@ManyToOne/@ManyToMany
     * fetch属性指定加载方式:fetch.lazy 延迟加载;fetchType.earge:急加载（立即从数据库中取出数据）
     * CascadeType 指定表与表级联的策略
     * CascadeType.REFRESH 级联刷新
     * CascadeType.REMOVE  级联删除 当调用remove方法删除order实体时，会优先删除orderitem中的数据
     * CascadeType.MERGE   级联更新 如果调用了merge方法,更新order时会相应更新orderitem数据
     * CascadeType.ALL     包含上面所有
     * 以上几种级联操作，只能实在满足数据库的约束时才能生效，比如上边的Order和OrderItem存在主外键关联所以执行REMOVE()方法时是不能实现级联删除的
     * CascadeType.PERSIST 级联保存 当调用了persist()方法，会级联保存相应数据
     */
    @ManyToMany(cascade = CascadeType.PERSIST)
    @JoinTable(name = "adm_admin_role",
            joinColumns = { @JoinColumn(name = "admin_username", referencedColumnName = "userLoginName") },
            inverseJoinColumns = { @JoinColumn(name = "role_id", referencedColumnName = "id") },
            uniqueConstraints = { @UniqueConstraint(columnNames = { "admin_username", "role_id" }) })
    private List<Role> roles;

    // 记录登陆用户信息
    /**@Transient 该注解表示ORM框架不会映射该字段到数据库 */
    @Transient
    private Timestamp lastActiveTime;
    @Transient
    private String loginIP;
    @Transient
    private String lastRequest;
    @Transient
    private String menuJSStr;
    @Transient
    private String permissionPath;
    @Transient
    private List<Menu> menus;

    private static final String SEMICOLON = ";";

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        Set<GrantedAuthority> set = new HashSet<>();
        if(roles != null){
            for(Role role : roles){
                List<MenuItem> list = role.getMenuItems();
                if(CollectionUtils.isNotEmpty(list)){
                    for(MenuItem item : list){
                        buildAuthoritySet(set,item.getSymbol());
                    }
                }
                List<Resource> resources = role.getResources();
                if(CollectionUtils.isNotEmpty(resources)){
                    for(Resource resource : resources){
                        buildAuthoritySet(set,resource.getSymbol());
                    }
                }
            }
        }
        return set;
    }

    private void buildAuthoritySet(Set<GrantedAuthority> set,String symbol){
        if(StringUtils.isNotEmpty(symbol)){
            if(symbol.contains(SEMICOLON)){
                String[] roleSymbols = symbol.split(SEMICOLON);
                for(String s : roleSymbols ){
                    set.add(new AdminAuthority(s));
                }
            }else{
                set.add(new AdminAuthority(symbol));
            }
        }
    }

    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return getUserLoginName();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return enabled;
    }

    public Admin(String userLoginName, String password, boolean enabled, String name, String email, String mobile, String permitIP, String msn, String qq, Date createDate, String createBy, String channelId, String portrait, Timestamp lastActiveTime, String loginIP, String lastRequest, String menuJSStr, String permissionPath, List<Menu> menus) {
        this.userLoginName = userLoginName;
        this.password = password;
        this.enabled = enabled;
        this.name = name;
        this.email = email;
        this.mobile = mobile;
        this.permitIP = permitIP;
        this.msn = msn;
        this.qq = qq;
        this.createDate = createDate;
        this.createBy = createBy;
        this.channelId = channelId;
        this.portrait = portrait;
        this.lastActiveTime = lastActiveTime;
        this.loginIP = loginIP;
        this.lastRequest = lastRequest;
        this.menuJSStr = menuJSStr;
        this.permissionPath = permissionPath;
        this.menus = menus;
    }

    public Admin() {
    }

    public String getUserLoginName() {
        return userLoginName;
    }

    public void setUserLoginName(String userLoginName) {
        this.userLoginName = userLoginName;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getPermitIP() {
        return permitIP;
    }

    public void setPermitIP(String permitIP) {
        this.permitIP = permitIP;
    }

    public String getMsn() {
        return msn;
    }

    public void setMsn(String msn) {
        this.msn = msn;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public String getChannelId() {
        return channelId;
    }

    public void setChannelId(String channelId) {
        this.channelId = channelId;
    }

    public String getPortrait() {
        return portrait;
    }

    public void setPortrait(String portrait) {
        this.portrait = portrait;
    }

    public Timestamp getLastActiveTime() {
        return lastActiveTime;
    }

    public void setLastActiveTime(Timestamp lastActiveTime) {
        this.lastActiveTime = lastActiveTime;
    }

    public String getLoginIP() {
        return loginIP;
    }

    public void setLoginIP(String loginIP) {
        this.loginIP = loginIP;
    }

    public String getLastRequest() {
        return lastRequest;
    }

    public void setLastRequest(String lastRequest) {
        this.lastRequest = lastRequest;
    }

    public String getMenuJSStr() {
        return menuJSStr;
    }

    public void setMenuJSStr(String menuJSStr) {
        this.menuJSStr = menuJSStr;
    }

    public String getPermissionPath() {
        return permissionPath;
    }

    public void setPermissionPath(String permissionPath) {
        this.permissionPath = permissionPath;
    }

    public List<Menu> getMenus() {
        return menus;
    }

    public void setMenus(List<Menu> menus) {
        this.menus = menus;
    }

    public void copy(Admin admin) {
        this.enabled = admin.isEnabled();
        this.name = admin.getName();
        this.email = admin.getEmail();
        this.mobile = admin.getMobile();
        this.permitIP = admin.getPermitIP();
        this.msn = admin.getMsn();
        this.qq = admin.getQq();
        this.channelId = admin.getChannelId();
        this.portrait = admin.getPortrait();
    }
}
