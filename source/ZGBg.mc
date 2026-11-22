import Toybox.Background;
import Toybox.System;
import Toybox.Time.Gregorian;
import Toybox.Complications;


(:background)
class ZGServiceDelegate extends ServiceDelegate {
	
	function initialize() {
		System.ServiceDelegate.initialize();
	}
	
    function onTemporalEvent() {
        wasTemporal = true;
  		jData = "Tuesday";
		
        Background.exit(jData);
    }
}
