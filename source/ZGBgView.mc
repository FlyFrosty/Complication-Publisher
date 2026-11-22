import Toybox.WatchUi;
import Toybox.Graphics;
import Toybox.System;
import Toybox.Application;
import Toybox.Time.Gregorian;

(:glance)
class ZGBgView extends WatchUi.GlanceView {
	
    function initialize() {
        GlanceView.initialize();       
    }
    
    function onLayout(dc) {
		var myWidth = dc.getWidth();
		var myHeight = dc.getHeight();

		dc.setColor(Graphics.COLOR_BLACK,Graphics.COLOR_BLACK);
		dc.clear();
		dc.setColor(Graphics.COLOR_BLUE,Graphics.COLOR_TRANSPARENT);
		dc.drawText((myWidth / 2), (myHeight / 2), Graphics.FONT_GLANCE_NUMBER, jData, Graphics.TEXT_JUSTIFY_CENTER|Graphics.TEXT_JUSTIFY_VCENTER);
    }
    
    function onUpdate(dc) {
        jData = "Wednesday";		

		dc.setColor(Graphics.COLOR_BLACK,Graphics.COLOR_BLACK);
		dc.clear();
		dc.setColor(Graphics.COLOR_BLUE,Graphics.COLOR_TRANSPARENT);

		var myWidth = dc.getWidth();
		var myHeight = dc.getHeight();
		dc.drawText((myWidth / 2), (myHeight / 2), Graphics.FONT_GLANCE_NUMBER, jData, Graphics.TEXT_JUSTIFY_CENTER|Graphics.TEXT_JUSTIFY_VCENTER);
    }   
}