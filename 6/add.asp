<!--#include file="conn.asp" -->
<%
nam1=trim(session("nam1"))                                                 '��ȡname,����ȥ������Ŀո�(trim ������ȥ�ո�)
if nam1=""  then                                                           '���name��ֵΪ��,�����һ������
response.write "<script>alert('δ��¼,���ȵ�¼��лл');onclick=history.go(-1)</script>"
    response.end                                                           '���ҽ�����������
end if 
ly=trim(request("ly"))                                                    '��ȡly,����ȥ������Ŀո�(trim ������ȥ�ո�)
if ly=""  then                                                            '���ly��ֵΪ��,�����һ������
response.write "<script>alert('û������');location='index.asp';onclick=history.go(-1)</script>"
    response.end                                                          '���ҽ�����������
end if                                                                    '����if ���
%>

<%
set rs=server.createobject("adodb.recordset")                              '��rs����Ȩ��
sql="select * from data"                                                   '�Ա��Ĳ���
rs.open sql,conn,3,3                                                       '�������ݿ�
rs.addnew                                                                  '����������
rs("ly")=request.form("ly")                                                '��ֵ��ly,�����ݿ�
rs("name")=trim(session("nam1"))                                            '��ֵ��name,�����ݿ�
rs.update                                                                  'rsΪupdate
rs.close                                                                   '����һ��rs����
set rs=nothing                                                             '���rs
conn.close                                                                 '����һ��conn����
set conn=nothing                                                           '���conn
response.write "<script>history.go(-1)</script>"                           '������һҳ
%>