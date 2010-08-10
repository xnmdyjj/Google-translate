//
//  GoogleDictionaryAppDelegate.m
//  GoogleDictionary
//
//  Created by Yu Jianjun on 8/10/10.
//  Copyright Cybercom 2010. All rights reserved.
//

#import "GoogleDictionaryAppDelegate.h"

@implementation GoogleDictionaryAppDelegate

@synthesize window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
