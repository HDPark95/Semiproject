package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.PageForward;

public class IndexPage implements PageModel{
	@Override
	public PageForward execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println("�ε��������� ����");
		return new PageForward("index",false);
	}
}
