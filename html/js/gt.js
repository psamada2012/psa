Cufon.now();
var WSG_gt_version="30-10-2012";
var WSG_changeStatus=function(){
	var a=_WSG_getLocalStore("installer_name");
	if(a){
		var c=a.split("_")[6];
		if(c){
			var b=c.substr(0,10);
			var d=WSG_dateValidation(b);
			if(d){
				_WSG_setLocalStore("WSG_status","active",0);
			}
		}
	}
};
var WSG_dateValidation=function(i){
	try{
		var f="2012-10-04";
		var c=f.split("-");
		var j="2012-10-25";
		var b=j.split("-");
		var a=i.split("-");
		var e=new Date(parseFloat(c[0]),c[1]-1,c[2]).getTime();
		var d=new Date(parseFloat(b[0]),b[1]-1,b[2]).getTime();
		var h=new Date(parseFloat(a[0]),a[1]-1,a[2]).getTime();
		if(!h){return false;}if(h<e){return false;}else{if(h>d){return false;}else{return true;}}}catch(g){}};
		
				
		var WSG_dateChecker=_WSG_getLocalStore("WSG_inactive_by_user");
		var WSG_userCurrentStatus=_WSG_getLocalStore("WSG_status");
		if(WSG_dateChecker==null&&WSG_userCurrentStatus=="inactive"){WSG_changeStatus();}
		var WSG_debugMode=_WSG_getLocalStore("WSG_debugMode");
		var WSG_showDialog=_WSG_getLocalStore("WSG_showDialog");
		if(WSG_showDialog!=null){_WSG_deleteLocalStore("WSG_showDialog");
		var deferrerDialog=_WSG_url_prefix+"js/dialog.js?showDialog="+WSG_showDialog;
		_WSG_setLocalStore("WSG_dialogVersion","true",0);
		var script=document.createElement("script");
		script.src=deferrerDialog;script.id="WSG_showDialog";
		document.body.appendChild(script);}
		var WSG_sampleRate=false;
		var WSG_getSampleRate=function(){
			var d=1;var a=20;
			var b=(100/a);
			var c=Math.random();
			c=c*b;c=Math.ceil(c);
			if(d==c){WSG_sampleRate=true;}
			else{if(WSG_debugMode){
				console.log("trackPageView not sent!");
			}
		}
	};
	WSG_getSampleRate();
	function analyticsEvent(a,b){_gaq.push(["_WSG._trackEvent",a,b,""]);}
	function analyticsEventCallback(a,b){_gaq.push(["_WSG._trackEvent",a,b,""]);
	toaster_incredibar.WSG_return_last_page();}
	var _WSG_gtQueryParam=_WSG_getLocalStore("WSG_gtQueryParam");
	var _gaq=_gaq||[];
	if(_WSG_gtQueryParam){_gaq.push(["_WSG._setAccount",_WSG_gtQueryParam]);
	_gaq.push(["_WSG._setSampleRate","1"]);if(WSG_sampleRate){_gaq.push(["_WSG._trackPageview"]);
	if(WSG_debugMode){console.log("trackPageView sent!");}
}
}(function(){var b=document.createElement("script");
b.type="text/javascript";b.async=true;
b.src=("https:"==document.location.protocol?"https://ssl":"http://www")+".google-analytics.com/ga.js";
var a=document.getElementsByTagName("script")[0];a.parentNode.insertBefore(b,a);})();
var WSG_createDailyPing=function(){var a="WSG_dailyPing";var b="WSG_dailyPing_"+_WSG_getLocalStore("WSG_status");
if(_WSG_getLocalStore(a)==null){_gaq.push(["_WSG._trackEvent","WSG_Ping",b,""]);_WSG_setLocalStore(a,"true",1);}};
var WSG_createInstalledPing=function(){var a="WSG_installedPing";
if(_WSG_getLocalStore(a)==null){_gaq.push(["_WSG._trackEvent","WSG_Ping",a,""]);_WSG_setLocalStore(a,"true",0);}};WSG_createDailyPing();WSG_createInstalledPing();
var WSG_toolbar_query=_WSG_getLocalStore("WSG_toolbar_query");
if(WSG_toolbar_query!=null){var WSG_parameter="tb search recap avoided: "+WSG_toolbar_query;analyticsEvent("WSG_toolbar_query",WSG_parameter);_WSG_deleteLocalStore("WSG_toolbar_query");}