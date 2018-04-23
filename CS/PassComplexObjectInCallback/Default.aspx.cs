using PassComplexObjectInCallback.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PassComplexObjectInCallback {
    public partial class Default : System.Web.UI.Page {
        protected void callbackPanel_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e) {
            MyData data = GetSerializationObject(e.Parameter);
            NameText.Text = data.Name;
            EmailText.Text = data.Email;
            AgeText.Text = data.Age != null ? data.Age.ToString() : "";
            ArrivalDateText.Text = data.ArrivalDate != null ? data.ArrivalDate.ToString() : "";
        }

        MyData GetSerializationObject(string jsonText) {
            if (string.IsNullOrEmpty(jsonText))
                return null;

            MyData data = null;
            try {
                data = new JavaScriptSerializer().Deserialize<MyData>(jsonText);
            } catch {
                ErrorFrame.InnerText = "An error has occured while parsing entered data.";
            }

            return data;
        }
    }
}