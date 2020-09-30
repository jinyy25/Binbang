<%@page import="com.binbang.member.model.vo.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	List<Member> list = (List) request.getAttribute("list");
	List searchCategory = (List) request.getAttribute("searchCategory");
	List cell = (List) request.getAttribute("cell");
	String adminTitle = (String) request.getAttribute("adminTitle");
%>

<div id="reserveAllContents" class="searchCommon">
  <p class="pageTitle"><%=adminTitle%></p>

  <select class="searchCategory" name="reserveCategory">
    <option value="" selected disabled hidden>����</option>  
    <option value="������ �̸�"><%=searchCategory.get(0) %></option> 
    <option value="���� ��¥"><%=searchCategory.get(1) %></option>  
    <!-- �ֽż�,�����ȼ� -->
    <option value="���� ��ȣ"><%=searchCategory.get(2) %></option>  
  </select>
  <div class="search">
    <input type="text" class="searchinput">
    <button class="inputButton"></button>
  </div>

  <div class="tb_wrap">
    <div class="tableDiv">
      <table class="tableAll">
        
        <tr class="fixed_top">
          <th class="<%=cell.get(0) %>" >ȸ�� ��ȣ</th>
          <th class="<%=cell.get(1) %>" >���� ����</th>
          <th class="<%=cell.get(2) %>" >������ �̸�</th>
          <th class="<%=cell.get(3) %>" >���� ��¥</th>
          <th class="<%=cell.get(4) %>" >���� ��ȣ</th>
          <th class="<%=cell.get(5) %>" >ȣ��Ʈ ��ȣ</th>
        </tr>
     
     	<%for(Member m : list) {%>
     		<tr>
     			<td class="<%=cell.get(0) %>"></td>
     			<td class="<%=cell.get(1) %>"></td>
     			<td class="<%=cell.get(2) %>"></td>
     			<td class="<%=cell.get(3) %>"></td>
     			<td class="<%=cell.get(4) %>"></td>
     			<td class="<%=cell.get(5) %>"></td>
     		</tr>
     	
     	<%} %>
      </table>
   </div>
  </div>
</div>