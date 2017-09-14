<%@ WebHandler Language="C#" Class="readSessionValidateNumber" %>

using System;
using System.Web;
using System.Web.SessionState;

public class readSessionValidateNumber : IHttpHandler , IRequiresSessionState {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        string ValidateNumber = (string)context.Session["ValidateNumber"];
        context.Response.Write(ValidateNumber);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}