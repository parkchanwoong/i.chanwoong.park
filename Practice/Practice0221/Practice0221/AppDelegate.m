//
//  AppDelegate.m
//  Practice0221
//
//  Created by 박찬웅 on 2017. 2. 21..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds]; //
    
    //UIStoryboard *sto = [UIStoryboard storyboardWithName:@"Main" bundle:nil]; //이름이 Main인 파일을 통해서 객체를 만들고 집어넣음
    //UIViewController *vc = [sto instantiateInitialViewController];
    //2. TabBarViewController 만들기
    ViewController *vc1 = [[ViewController alloc]init];
    ViewController *vc2 = [[ViewController alloc]init];
    ViewController *vc3 = [[ViewController alloc]init];
    ViewController *vc4 = [[ViewController alloc]init];
    UITabBarController *tabbar = [[UITabBarController alloc]init];
    
    tabbar.viewControllers = @[vc1,vc2,vc3,vc4];
    
    //3. 탭바 아이콘 설정
    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:@"1번"
                                                        image:[UIImage imageNamed:@"1"]
                                                selectedImage:[UIImage imageNamed:@"1"]];
    
    UITabBarItem *item2 = [[UITabBarItem alloc]initWithTitle:@"2번" image:[UIImage imageNamed:@"2"] selectedImage:[UIImage imageNamed:@"2"]];
    UITabBarItem *item3 = [[UITabBarItem alloc]initWithTitle:@"3번" image:[UIImage imageNamed:@"3.jpg"] selectedImage:[UIImage imageNamed:@"3"]];
    //UITabBarItem *item4 = [[UITabBarItem alloc]initWithTitle:@"4번" image:[UIImage
    
    vc1.tabBarItem = item1;
    vc2.tabBarItem = item2;
    vc3.tabBarItem = item3;
    //vc4.tabBarItem = item4;
                           
    
    
    //UIViewController *vc = [sto instantiateViewControllerWithIdentifier:@"ViewController"];
    
    
    //UINavigationController *navi = [[UINavigationController alloc]initWithRootViewController:vc];
    
    //UINavigationController *navi = [sto instantiateViewControllerWithIdentifier:@"UINavigationController"]; //스토리보드 객체에 있는 초기화시작점이 뷰 컨트롤러인 객체를 네비게이션 변수에 집어넣음
    
    self.window.rootViewController = tabbar;
    [self.window makeKeyAndVisible];
    
    
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
