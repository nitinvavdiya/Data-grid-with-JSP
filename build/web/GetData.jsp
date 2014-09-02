<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%
    JSONObject data = new JSONObject();
    JSONArray array = new JSONArray();
    for (int i = 0; i <= 200; i++) {
        JSONArray tmparr = new JSONArray();
        tmparr.put(i);
        tmparr.put("Nitin");
        tmparr.put("nitinvavdiya@gmail.com");
        array.put(tmparr);
    }
    data.put("data", array);
  //  out.println(data);
    
    //-------------for editor-----------
    for(int i=0;i<10;i++){
        JSONObject tmp = new JSONObject();
        tmp.put("id", i);
        tmp.put("name","user-"+i);
        tmp.put("email", "user-"+i+"@gamil.com");
        array.put(tmp);
    }
    data.put("data", array);
    out.println(data);
%>