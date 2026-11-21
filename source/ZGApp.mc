import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;
import Toybox.Background;

var jData;
var jDataKey="jDataKey";
var jDayDisp;
var inBackground=false;
var wasTemporal=false;
var hasComps;

(:background :glance)
class ZGApp extends Application.AppBase {

    function initialize() {
        AppBase.initialize();

        hasComps = (Toybox has :Complications);
        jData = Application.Storage.getValue(jDataKey);
        if(jData==null) {
            jData="26 000";
            publishComp();
        }
    }

    //delete this?
    function onStart(state as Dictionary?) as Void {
    }

    function onStop(state as Dictionary?) as Void {
        if(inBackground && wasTemporal) {
		    publishComp();
        }
    }

    function getInitialView() as [Views] or [Views, InputDelegates] {
        Background.registerForTemporalEvent(new Time.Duration(5 * 60));
        return [ new ZGView() ];
    }

    function getGlanceView() {
        Background.registerForTemporalEvent(new Time.Duration(5 * 60));
        return [ new ZGBgView() ];
    }
    
    function onBackgroundData(data) {
        jData=data;
        Application.Storage.setValue(jDataKey,jData);
        WatchUi.requestUpdate();
    }

    function getServiceDelegate(){  
    	inBackground=true;
        return [new ZGServiceDelegate()];
    }

    function publishComp() {
        if(jData==null || !hasComps) {return;}
        System.println("publishComp "+jData);
        Complications.updateComplication(0, {:value => jData});
    } 

}

function getApp() as ZGApp {
    return Application.getApp() as ZGApp;
}