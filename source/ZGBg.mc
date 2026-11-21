import Toybox.Background;
import Toybox.System;
import Toybox.Time.Gregorian;


(:background)
class ZGServiceDelegate extends ServiceDelegate {
	
	function initialize() {
		System.ServiceDelegate.initialize();
	}
	
    function onTemporalEvent() {
        wasTemporal = true;
  		jData = "Tuesday";

		Application.Storage.setValue(jDataKey,jData);
        Background.exit(jData);
    }
}
