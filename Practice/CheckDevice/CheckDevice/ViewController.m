//
//  ViewController.m
//  CheckDevice
//
//  Created by 박찬웅 on 2017. 4. 10..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"[UIDevice currentDevice].model: %@",[UIDevice currentDevice].model);
    NSLog(@"[UIDevice currentDevice].description: %@",[UIDevice currentDevice].description);
    NSLog(@"[UIDevice currentDevice].localizedModel: %@",[UIDevice currentDevice].localizedModel);
    NSLog(@"[UIDevice currentDevice].name: %@",[UIDevice currentDevice].name);
    NSLog(@"[UIDevice currentDevice].systemVersion: %@",[UIDevice currentDevice].systemVersion);
    NSLog(@"[UIDevice currentDevice].systemName: %@",[UIDevice currentDevice].systemName);
    NSLog(@"[UIDevice currentDevice].batteryLevel: %f",[UIDevice currentDevice].batteryLevel);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
