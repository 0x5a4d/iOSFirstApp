//
//  AppDelegate.m
//  FirstApp
//
//  Created by Denis Khazhiev on 08/04/2019.
//  Copyright © 2019 Denis Khazhiev. All rights reserved.
//

#import "AppDelegate.h"
#import "HDFalcon.h"

@class Vehicle;

@interface Rider:NSObject
@property (strong,nonatomic)Vehicle * vehicle;
@end

@implementation Rider
-(void)dealloc{
    NSLog(@"dealloc Rider");
}

@end
@interface Vehicle: NSObject
@property (strong,nonatomic)Rider * rider;
//@property (weak,nonatomic)Rider * rider; - для устранения retain cycle
@end

@implementation Vehicle
-(void)dealloc{
    NSLog(@"dealloc Vehicle");
}
@end

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    Rider * rider = [[Rider alloc] init];
    Vehicle * vehicle = [[Vehicle alloc] init];
    rider.vehicle = vehicle;
    vehicle.rider = rider;
    
    // у объектов Rider и Vehicle никогда не будут вызваны методы dealloc, потому как они ссылаются друг на доруга strong ссылками - это retain cycle. Чтобы исправить это, нужно одну из ссылок как weak, чтобы  удаление одного объекта не блокировалось strong ссылкой из второго.
    
    HDFalcon * falcon = [[HDFalcon alloc] init];
    NSLog(@"%@", [falcon getName]);

    [falcon fly];
    [falcon voice];
    [falcon hunt];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
