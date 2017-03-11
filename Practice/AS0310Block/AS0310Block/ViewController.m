//
//  ViewController.m
//  AS0310Block
//
//  Created by 박찬웅 on 2017. 3. 10..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.blockView changeText:^NSString *{
        return @"gggg";
    }];
     
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
