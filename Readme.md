<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128564835/14.2.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T466808)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [styles.css](./CS/PassComplexObjectInCallback/Content/styles.css)
* [Default.aspx](./CS/PassComplexObjectInCallback/Default.aspx) (VB: [Default.aspx](./VB/PassComplexObjectInCallback/Default.aspx))
* [Default.aspx.cs](./CS/PassComplexObjectInCallback/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/PassComplexObjectInCallback/Default.aspx.vb))
* [MyData.cs](./CS/PassComplexObjectInCallback/Models/MyData.cs) (VB: [MyData.vb](./VB/PassComplexObjectInCallback/Models/MyData.vb))
<!-- default file list end -->
# How to pass a complex object as a callback argument
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t466808/)**
<!-- run online end -->


<p>This sample demonstrates how to convert custom types to the JSON string on the client side and parse this string on the server. The conversion is performed using <a href="https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/JSON/stringify">JSON.stringify</a>. This function is a standard function for all browsers.<br>The JSON string is converted in a code-behind file using the <strong>JavaScriptSerializer.Deserialize</strong> method.</p>
<p>In the sample, if it is not possible to deserialize user input, an exception is thrown.<br><br><strong>See also:</strong><br><a href="https://www.devexpress.com/Support/Center/Example/Details/E3338">How to pass complex objects to a callback Action as callback arguments</a> </p>

<br/>


