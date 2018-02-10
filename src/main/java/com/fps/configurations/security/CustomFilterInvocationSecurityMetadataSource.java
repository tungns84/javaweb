package com.fps.configurations.security;

import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;

@Component
public class CustomFilterInvocationSecurityMetadataSource implements FilterInvocationSecurityMetadataSource {

    public Collection<ConfigAttribute> getAttributes(Object object) throws IllegalArgumentException {
        /*FilterInvocation fi = (FilterInvocation) object;

        String url = fi.getRequestUrl();
        HttpServletRequest request = fi.getHttpRequest();

        // Instead of hard coding the roles lookup the roles from the database using the url and/or HttpServletRequest
        // Do not forget to add caching of the lookup
        String[] roles = new String[] { "ROLE_ADMIN", "ROLE_USER" };
        return SecurityConfig.createList(roles);*/
        return null;
    }

    public Collection<ConfigAttribute> getAllConfigAttributes() {
        return null;
    }

    public boolean supports(Class<?> clazz) {
        return FilterInvocation.class.isAssignableFrom(clazz);
    }
}
