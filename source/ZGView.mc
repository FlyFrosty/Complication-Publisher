import Toybox.Graphics;
import Toybox.WatchUi;
import Toybox.Time.Gregorian;

class ZGView extends WatchUi.View {

    function initialize() {
        View.initialize();
    }

    // Delete this?
    function onLayout(dc as Dc) as Void {
    }

    // Delete this?
    function onShow() as Void {
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {

        dc.setColor(Graphics.COLOR_BLACK,Graphics.COLOR_BLACK);
        dc.clear();
        dc.setColor(Graphics.COLOR_BLUE,Graphics.COLOR_TRANSPARENT);

        jData = "Monday";
        dc.drawText(dc.getWidth() / 2, dc.getHeight() * 0.75, Graphics.FONT_SYSTEM_TINY, jData, Graphics.TEXT_JUSTIFY_CENTER);
    }

    // Delete this?
    function onHide() as Void {
    }

}
