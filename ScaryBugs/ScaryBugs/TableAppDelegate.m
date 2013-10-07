//
//  TableAppDelegate.m
//  ScaryBugs
//
//  Created by ugur donmez on 9/18/13.
//  Copyright (c) 2013 ugur donmez. All rights reserved.
//

#import "TableAppDelegate.h"

#import "TableMasterViewController.h"
#import "ScaryBugDoc.h"

@implementation TableAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    ScaryBugDoc *bug1 = [[ScaryBugDoc alloc] initWithTitle:@"Potato Bug" rating:4 thumbImage:[UIImage imageNamed:@"potatoBugThumb.jpg"] fullImage:[UIImage imageNamed:@"potatoBug.jpg"]];
    
    ScaryBugDoc *bug2 = [[ScaryBugDoc alloc] initWithTitle:@"House Centipede" rating:3 thumbImage:[UIImage imageNamed:@"centipedeThumb.jpg"] fullImage:[UIImage imageNamed:@"centipede.jpg"]];
    
    ScaryBugDoc *bug3 = [[ScaryBugDoc alloc] initWithTitle:@"Wold Spider" rating:5 thumbImage:[UIImage imageNamed:@"woldSpiderThumb.jpg"] fullImage:[UIImage imageNamed:@"woldSpider.jpg"]];
    
    ScaryBugDoc *bug4 = [[ScaryBugDoc alloc] initWithTitle:@"Lady Bug" rating:1 thumbImage:[UIImage imageNamed:@"ladybugugThumb.jpg"] fullImage:[UIImage imageNamed:@"ladybugug.jpg"]];
    
    NSMutableArray * bugs = [NSMutableArray arrayWithObjects:bug1,bug2,bug3,bug4, nil];
    
    UINavigationController * navController = (UINavigationController *) self.window.rootViewController;
    
    TableMasterViewController * masterController = [navController.viewControllers objectAtIndex:0];
    
    masterController.bugs = bugs;
    
                         
    
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
