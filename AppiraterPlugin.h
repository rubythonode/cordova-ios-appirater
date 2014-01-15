//
//  AppiraterPlugin.h
//  What To Brew
//
//  Created by James Stuckey Weber on 3/27/12.
//  Copyright (c) 2012 ChinStr.apps, All rights reserved.
//

#ifdef CORDOVA_FRAMEWORK
#import <CORDOVA/CDVPlugin.h>
#else
#import "CDVPlugin.h"
#endif

#define APPIRATER_DAYS_KEY @"appirater_days_key"
#define APPIRATER_STARTS_KEY @"appirater_starts_key"
#define APPIRATER_APPLICATION_ID_KEY @"application_id_key"

@interface AppiraterPlugin : CDVPlugin {
	NSString* callbackID;  
}
@property (nonatomic, copy) NSString* callbackID;

//Significant Event Method

- (void)sigEvent:(CDVInvokedUrlCommand *)command;
- (void)foreground:(CDVInvokedUrlCommand *)command;

- (void)setNumberOfDays:(CDVInvokedUrlCommand *)command;
- (void)setNumberOfStarts:(CDVInvokedUrlCommand *)command;
- (void)setMarketApplicationId:(CDVInvokedUrlCommand *)command;
@end
