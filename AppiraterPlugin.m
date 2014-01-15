//
//  AppiraterPlugin.m
//  What To Brew
//
//  Created by James Stuckey Weber on 3/27/12.
//  Copyright (c) 2012 ChinStr.apps, All rights reserved.
//

#import "AppiraterPlugin.h"
#import "Appirater.h"

@implementation AppiraterPlugin
@synthesize callbackID;

- (void) sigEvent:(CDVInvokedUrlCommand *)command;
{
	[Appirater userDidSignificantEvent:YES];
}

- (void) foreground:(CDVInvokedUrlCommand *)command;
{
	[Appirater appEnteredForeground:NO];
}

- (void) setNumberOfDays:(CDVInvokedUrlCommand *)command;
{
    NSNumber *days = [command.arguments lastObject];
    
    NSLog(@"Set number of days: %@", days);
    
    [[NSUserDefaults standardUserDefaults] setObject:days forKey:APPIRATER_DAYS_KEY];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void) setNumberOfStarts:(CDVInvokedUrlCommand *)command;
{
    NSNumber *starts = [command.arguments lastObject];
    
    NSLog(@"Set number of starts: %@", starts);
    
    [[NSUserDefaults standardUserDefaults] setObject:starts forKey:APPIRATER_STARTS_KEY];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)setMarketApplicationId:(CDVInvokedUrlCommand *)command
{
    NSNumber *applicationId = [command.arguments lastObject];
    
    NSLog(@"Set applicationId: %@", applicationId);
    
    [[NSUserDefaults standardUserDefaults] setObject:applicationId forKey:APPIRATER_APPLICATION_ID_KEY];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
@end
