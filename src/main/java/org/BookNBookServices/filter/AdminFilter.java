package org.BookNBookServices.filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.BookNBookServices.dao.TipoUsuario;
import org.BookNBookServices.dao.control.UsuarioLogged;

import java.io.IOException;

@WebFilter(filterName = "adminFilter", urlPatterns = {"/jsp/admin/*"}, dispatcherTypes = {DispatcherType.REQUEST, DispatcherType.FORWARD})
public class AdminFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) {
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws
            IOException,
            ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        UsuarioLogged usuarioLogged = (UsuarioLogged) request.getSession().getAttribute("userLogin");
        if (usuarioLogged == null || !usuarioLogged.getTipoUsuario().equals(TipoUsuario.ADMINISTRADOR)) {
            ((HttpServletResponse)servletResponse).sendRedirect("/BookNBookServices/jsp/login.jsp");
        } else {
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }
}
