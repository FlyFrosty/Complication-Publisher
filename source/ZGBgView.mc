import Toybox.WatchUi;
import Toybox.Graphics;
import Toybox.System;
import Toybox.Application;
import Toybox.Time.Gregorian;

(:glance)
class ZGBgView extends WatchUi.GlanceView {
	var fontTitle=Graphics.FONT_GLANCE_NUMBER;
	var fontData=Graphics.FONT_GLANCE_NUMBER;
	
    function initialize() {
        GlanceView.initialize();       
    }
    
    function onLayout(dc) {
    }
    
    function onUpdate(dc) {
        jData = "Sunday";

		Application.Storage.setValue(jDataKey,jData);		

		dc.setColor(Graphics.COLOR_BLACK,Graphics.COLOR_BLACK);
		dc.clear();
		dc.setColor(Graphics.COLOR_WHITE,Graphics.COLOR_TRANSPARENT);

		var myWidth = dc.getWidth();
		var myHeight = dc.getHeight();
		dc.drawText((myWidth / 2), (myHeight / 2), fontTitle, "jData = "+jData,Graphics.TEXT_JUSTIFY_CENTER|Graphics.TEXT_JUSTIFY_VCENTER);
    }   
}