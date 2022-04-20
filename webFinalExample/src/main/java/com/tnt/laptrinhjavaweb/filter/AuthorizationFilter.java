package com.tnt.laptrinhjavaweb.filter;

import com.tnt.laptrinhjavaweb.Constant.SystemConstant;
import com.tnt.laptrinhjavaweb.model.UserModel;
import com.tnt.laptrinhjavaweb.utils.SessionUtil;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthorizationFilter implements Filter {
	// để sử dụng được cái class bộ lọc này thì cần phải khai báo nó trong web-INF/web.xml
	//sử dụng cơ chế servletmapping là cơ chế gọi controler của servlet
	private ServletContext contex;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.contex = filterConfig.getServletContext();

	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;

		String url = request.getRequestURI();

		if (url.contains("/admin")) {
			// nếu phải là url trang admin thì phải kiểm tra xem đã đang nhập chưa
			UserModel model = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
			if (model != null) {
				if (model.getRoleModel().getCode().equals(SystemConstant.ADMIN)) {
					chain.doFilter(servletRequest, servletResponse);
				} else if (model.getRoleModel().getCode().equals(SystemConstant.USER)) {
					response.sendRedirect(request.getContextPath() + "/dang-nhap?action=login&message=not_permission&alert=danger");
				}

			} else {
				response.sendRedirect(request.getContextPath() + "/dang-nhap?action=login&message=not_login&alert=danger");
			}

		} else {
			chain.doFilter(servletRequest, servletResponse);// k phải link trang admin thì cho qua
		}
	}

	@Override
	public void destroy() {

	}

}
