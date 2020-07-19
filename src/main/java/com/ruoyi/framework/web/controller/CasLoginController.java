package com.ruoyi.framework.web.controller;

import com.neusoft.education.tp.sso.client.filter.CASFilterRequestWrapper;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.project.system.user.domain.User;
import com.ruoyi.project.system.user.service.IUserService;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@RestController
public class CasLoginController {
    private static final Logger log = LoggerFactory.getLogger(CasLoginController.class);

    @Autowired
    private IUserService iUserService;
    @GetMapping("/cas/login")

    public void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("单点登录======"+request.getParameterMap().size());
        CASFilterRequestWrapper reqWrapper = new CASFilterRequestWrapper(request);
        String userID = reqWrapper.getRemoteUser();
        // 	String userID = request.getParameter("userID");
        if(userID == null){
            log.error("认证失败，无效用户信息!");
            return;
        }
        log.info("userId====== {}",userID);
        String strRedirecturl = request.getParameter("redirectUrl");
        if(strRedirecturl != null && strRedirecturl.length() > 0) {
            response.sendRedirect(strRedirecturl);
        }else{

            User user = iUserService.selectUserByLoginName(userID);
            System.out.println("user======"+user);
            if(user == null){
                log.error("认证失败，用户信息不存在!");
                return;
            }else {
                String username = user.getLoginName();
                String password = user.getPassword();
                if (password==null){
                    password = "";
                }
                boolean rememberMe = false;
                String host = StringUtils.getRemoteAddr((HttpServletRequest)request);
                String captcha = null;
                boolean mobile = false;
// 			UsernamePasswordToken token = new UsernamePasswordToken(username, "admin".toCharArray(), rememberMe, host, captcha, mobile);
                try{
                    String secretKey = Global.getConfig("shiro.sso.secretKey");
                    String key = Digests.md5(secretKey + username + DateUtils.getDate("yyyyMMdd"));
                    UsernamePasswordToken token = new UsernamePasswordToken();
                    token.setUsername(username);
                    token.setPassword(key.toCharArray());
                    token.(token.toString());
                    org.apache.shiro.subject.Subject subject = UserUtils.getSubject();
                    subject.login(token);
                    // 重定向到新地址
                    String site = new String("http://172.16.6.92");
                    response.setStatus(response.SC_MOVED_TEMPORARILY);
                    response.setHeader("Location", site);
                }catch(Exception e){
                    e.printStackTrace();
                    log.error("认证失败");
                    return;
                }
            }
// 		out.println("认证成功!"+userID);
// 		response.sendRedirect(path);
    }
}
