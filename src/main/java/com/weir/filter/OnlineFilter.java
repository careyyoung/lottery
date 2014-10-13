package com.weir.filter;
import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class OnlineFilter extends HttpServlet implements Filter
{
 private static final long serialVersionUID = 1L;
 public void init(FilterConfig filterConfig) throws ServletException
 {

 }
 public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException 
 {
  RequestDispatcher dispatcher = request.getRequestDispatcher("/view/sys/userLogin.jsp");//�����������û�е�½��Ҫת������ҳ��
  HttpServletRequest req = (HttpServletRequest) request;
  HttpServletResponse res = (HttpServletResponse) response;
  HttpSession session = req.getSession(true);

//  System.out.println(((HttpServletRequest) request).getRequestURI());
  // ��session��ȡ���û�����Ϣ
  String username = (String) session.getAttribute("userId");//�����ȡsession��Ϊ�˼��session����û�б����û���Ϣ��û�еĻ���ת������½ҳ��

  // �ж����û��ȡ���û���Ϣ,����ת����½ҳ��
  if (username == null || "".equals(username))
  {
   // ��ת����½ҳ��
   dispatcher.forward(request,response);
//   System.out.println("�û�û�е�½�����������");
   
   res.setHeader("Cache-Control","no-store");   
   res.setDateHeader("Expires",0);
   res.setHeader("Pragma","no-cache");
  }
  else
  {
   // �Ѿ���½,�����˴�����
   chain.doFilter(request,response);
//   System.out.println("�û��Ѿ���½���������");
  }
 }
 public void destroy()
 {

 }
}
