//
//  ViewController.m
//  BlockSample
//
//  Created by youngmin joo on 2017. 3. 10..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
////<BlockViewDelegate>
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.customView changeTextAction:^NSString *{
        return @"hahahaha park out";
    }];

//    self.customView.delegate = self;
}


//-(NSString *)didSelectBtnOnText
//{
//    return @"joo";
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
