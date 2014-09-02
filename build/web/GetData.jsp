<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%
    JSONObject data = new JSONObject();
    JSONArray array = new JSONArray();
    for(int i=0;i<=200;i++){
        JSONArray tmparr = new JSONArray();
        tmparr.put(i);
         tmparr.put("Nitin");
          tmparr.put("nitinvavdiya@gmail.com");
          array.put(tmparr);
    }
    data.put("data", array);
    out.println(data);
%>