var xmlhttp;
function toPost() {
	var id = document.getElementById("id").value;
	var language = document.getElementById("language").value;
	var source = document.getElementById("source").value;

	// alert("id="+id+"&language="+language+"&source="+source);

	if (window.XMLHttpRequest) {
		xmlhttp = new XMLHttpRequest();
		if (xmlhttp.overrideMimeType) {
			xmlhttp.overrideMimeType("text/xml");
		}
	} else if (window.ActiveXObject) {
		var activexName = [ "MSXML2.XMLHTTP", "Microsoft.XMLHTTP" ];
		for (var i = 0; i < activexName.length; i++) {
			try {
				xmlhttp = new ActiveXObject(activexName[i]);
				break;
			} catch (e) {
			}
		}
	}

	xmlhttp.onreadystatechange = callback;
	xmlhttp.open("POST", "SubmitAction", true);
	xmlhttp.setRequestHeader("Content-Type",
			"application/x-www-form-urlencoded");
	xmlhttp.send("id=" + id + "&language=" + language + "&source=" + source);
	getresult();
}

function getresult() {
	// alert("进来getresult()")
	if (window.XMLHttpRequest) {
		xmlhttp = new XMLHttpRequest();
		if (xmlhttp.overrideMimeType) {
			xmlhttp.overrideMimeType("text/xml");
		}
	} else if (window.ActiveXObject) {
		var activexName = [ "MSXML2.XMLHTTP", "Microsoft.XMLHTTP" ];
		for (var i = 0; i < activexName.length; i++) {
			try {
				xmlhttp = new ActiveXObject(activexName[i]);
				break;
			} catch (e) {
			}
		}
	}

	xmlhttp.onreadystatechange = callback;
	xmlhttp.open("POST", "GetResult", true);
	xmlhttp.setRequestHeader("Content-Type",
			"application/x-www-form-urlencoded");
	xmlhttp.send(null);
	window.setTimeout("getresult()", 5000);

}

function callback() {
	if (xmlhttp.readyState == 4) {
		if (xmlhttp.status == 200) {
			// xml的方法
			// var responseText = xmlhttp.responseText;
			// // alert(responseText);
			// var divNode = document.getElementById("result");
			// divNode.innerHTML = responseText;

			// json的方法
			var jsonObj = JSON.parse(xmlhttp.responseText);
			var result = jsonObj.result;
			// alert(result);
			var divNode = document.getElementById("result");
			divNode.innerHTML = "判断中。。。";
			if (result.IDentifier > 0) {
				divNode.innerHTML = result.result;
				var request = XMLHttpRequest;
				request.abort();
			}
		} else {
			 alert("出错了！！！");
		}
	}
}
