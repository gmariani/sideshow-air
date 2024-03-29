////////////////////////////////////////////////////////////////////////////////
//
//  COURSE VECTOR
//  Copyright 2011 Course Vector
//  All Rights Reserved.
//
//  NOTICE: Course Vector permits you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

package cv.sideshow.view.components {
	
    import flash.desktop.Icon;
    import flash.display.Loader;
    import flash.events.Event;
    import flash.net.URLRequest;
     
    public class MenuIcon extends Icon {      		
		private var imageURLs:Array = ['icons/Sideshow_16.png','icons/Sideshow_32.png',	'icons/Sideshow_48.png','icons/Sideshow_128.png'];
		
        public function MenuIcon():void {
            super();
            bitmaps = new Array();
        }
        
        public function loadImages(event:Event = null):void {
        	if(event != null) bitmaps.push(event.target.content.bitmapData);
        	
        	if(imageURLs.length > 0) {
        		var loader:Loader = new Loader();
        		loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadImages, false, 0, true);
				loader.load(new URLRequest(imageURLs.pop()));
        	} else {
        		dispatchEvent(new Event(Event.COMPLETE, false, false));
        	}
        }
    }
}