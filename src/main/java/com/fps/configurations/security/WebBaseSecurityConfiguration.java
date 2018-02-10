package com.fps.configurations.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.access.intercept.FilterSecurityInterceptor;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
public class WebBaseSecurityConfiguration extends WebSecurityConfigurerAdapter {

    /*@Autowired
    private CustomFilterSecurityInterceptor customFilterSecurityInterceptor;*/

    @Autowired
    @Qualifier("userDetailsService")
    UserDetailsService userDetailsService;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    /*@Autowired
    private DataSource dataSource;*/

        /*@Value("${spring.queries.users-query}")
        private String usersQuery;

        @Value("${spring.queries.roles-query}")
        private String rolesQuery;*/

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {

        auth.userDetailsService(userDetailsService).passwordEncoder(bCryptPasswordEncoder);
            /*auth.jdbcAuthentication().usersByUsernameQuery(usersQuery).authoritiesByUsernameQuery(rolesQuery)
                    .dataSource(dataSource).passwordEncoder(bCryptPasswordEncoder);*/

        /*
         * auth .inMemoryAuthentication()
         * .withUser("user").password("{noop}password").roles("USER") .and().
         * withUser("admin").password("{noop}password").roles("ADMIN");
         */
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http.authorizeRequests().antMatchers("/").permitAll().antMatchers("/login").permitAll().antMatchers("/signup")
                .permitAll()//.antMatchers("/admin_url/**").hasAuthority("ROLE_ADMIN")
                .anyRequest().authenticated().and().csrf()
                .disable().formLogin().loginPage("/login").failureUrl("/login?error=true")
                .defaultSuccessUrl("/home").usernameParameter("username").passwordParameter("password").and()
                .logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout")).logoutSuccessUrl("/").and()
                .exceptionHandling().accessDeniedPage("/access-denied");
        /*http.authorizeRequests().antMatchers("/").permitAll().antMatchers("/login").permitAll().antMatchers("/signup")
                .permitAll().antMatchers("/admin/**").hasAuthority("ROLE_ADMIN").anyRequest().authenticated().and()
                .formLogin().loginPage("/login").failureUrl("/login?error=true")
                .defaultSuccessUrl("/home").usernameParameter("username").passwordParameter("password").and()
                .logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout")).logoutSuccessUrl("/").and()
                .exceptionHandling().accessDeniedPage("/access-denied");
            *//*CharacterEncodingFilter filter = new CharacterEncodingFilter();
            filter.setEncoding("UTF-8");
            filter.setForceEncoding(true);
            http.addFilterBefore(filter, CsrfFilter.class);*//*
        http.addFilterBefore(customFilterSecurityInterceptor, FilterSecurityInterceptor.class).csrf().disable();*/
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/resources/**", "/static/**");
    }

}
