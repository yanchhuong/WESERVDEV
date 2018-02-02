package com.code.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.code.service.UserService;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	DataSource dataSource;
	
	@Autowired
	private UserService iUserDao;
	SecurityConfig(UserService iUserDao){
		this.iUserDao=iUserDao;
	}

	@Autowired
	public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
		auth.jdbcAuthentication().dataSource(dataSource)
				.passwordEncoder(passwordEncoder())
				.usersByUsernameQuery("select username,password, enabled from users where username=?")
				.authoritiesByUsernameQuery("select username, role from user_roles where username=?");
		        

	}
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()

				// control by log in for page
				.antMatchers("/chatting")
				.access("hasRole('ROLE_USER') or hasRole('ROLE_ADMIN') or hasRole('ROLE_EMPLOYEE')")

				.antMatchers("/users").access("hasRole('ROLE_ADMIN')")
				.antMatchers("/users/add").access("hasRole('ROLE_ADMIN')")
				.antMatchers("/users/**/update").access("hasRole('ROLE_ADMIN')")
				.antMatchers("/users/**/delete").access("hasRole('ROLE_ADMIN')")

				.anyRequest().permitAll()
		   .and()
		   		.formLogin().loginPage("/login")
		   		.successHandler(new SuccessLoginHandler(iUserDao))//.defaultSuccessUrl("/")
		   		.usernameParameter("username")
				.passwordParameter("password")
				
			.and()
				.logout().logoutSuccessUrl("/login?logout")
				
			.and()
				.exceptionHandling().accessDeniedPage("/403")
			.and().csrf();
	}
	@Bean
	public PasswordEncoder passwordEncoder(){
		PasswordEncoder encoder = new BCryptPasswordEncoder();
		return encoder;
	}

}