package com.sh.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.lang.Nullable;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.AsyncHandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j2;

@Component
@Log4j2
/*
 * 로그 확인용 인터셉터 
 * Interceptor에서의 로그는 
 * API 접근에 대한 통계
 * API Call에 대한 시간 통계를 남긴다. 
 */
public class LogCheckInterceptor implements AsyncHandlerInterceptor{ // HandlerInterceptorAdapter가 Deprecated 되어 AsyncHandlerInterceptor 사용

    // Request가 들어오고 Controller에 넘어가기 직전에 처리
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        log.info("url : {}", request.getRequestURI());
        return AsyncHandlerInterceptor.super.preHandle(request, response, handler);
    }

    // Controller에서 요청이 다 마무리하고, View로 Rendering하게 전에 처리
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
    @Nullable ModelAndView modelAndView) throws Exception {
        log.info("response status: {}", response.getStatus());
        AsyncHandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
    }


    // Controller에서 요청이 다 마무리되고, View로 Rendering이 다 끝나면 처리
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,
    @Nullable Exception ex) throws Exception {

        AsyncHandlerInterceptor.super.afterCompletion(request, response, handler, ex);
    }
}
