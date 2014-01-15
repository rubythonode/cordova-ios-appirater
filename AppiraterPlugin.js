/**
 * @constructor
 */
var AppiraterPlugin = function(){};

AppiraterPlugin.prototype.sigEvent = function(success, failure){
    cordova.exec(success, failure, "AppiraterPlugin", "sigEvent");
};

AppiraterPlugin.prototype.foreground = function(success, failure){
    cordova.exec(success, failure, "AppiraterPlugin", "foreground");
};


AppiraterPlugin.prototype.setNumberOfStarts = function(number){
    cordova.exec(null, null, "AppiraterPlugin", "setNumberOfStarts", [number]);
};


AppiraterPlugin.prototype.setNumberOfDays = function(number){
    cordova.exec(null, null, "AppiraterPlugin", "setNumberOfDays", [number]);
};

AppiraterPlugin.prototype.setMarketApplicationId = function(applicationId){
    cordova.exec(null, null, "AppiraterPlugin", "setMarketApplicationId", [applicationId]);
};

// Plug in to Cordova
cordova.addConstructor(function() {
					   
					   /* shim to work in 1.5 and 1.6  */
                       if (!window.Cordova) {
                       window.Cordova = cordova;
                       };
                       
					   
					   if(!window.plugins) window.plugins = {};
					   window.plugins.appiraterPlugin = new AppiraterPlugin();
					   });