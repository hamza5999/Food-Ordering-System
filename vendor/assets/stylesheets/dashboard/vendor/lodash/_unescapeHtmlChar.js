var basePropertyOf=require("./_basePropertyOf"),htmlUnescapes={"&amp;":"&","&lt;":"<","&gt;":">","&quot;":'"',"&#39;":"'"},unescapeHtmlChar=basePropertyOf(htmlUnescapes);module.exports=unescapeHtmlChar;