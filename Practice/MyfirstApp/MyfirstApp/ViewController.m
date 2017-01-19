//
//  ViewController.m
//  MyfirstApp
//
//  Created by 박찬웅 on 2017. 1. 16..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSLog(@"브레이크 포인트 전");
    
    NSLog(@"브레이크 포인트 후");
    
    NSLog(@"중간 공백........");
    
    NSLog(@"다음 브레이크 포인트 전");
    
    NSLog(@"다음 브레이크 포인트 후");
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnAction
{
    [self.titleLB setText:@"걱정따윈 없어!\n내 친구와 함께니까"];
}

- (IBAction)btnAction2
{
    [self.titleLB setText:@"자 이제 시작이야~내꿈을 내꿈을 위한 여행 피카츄"];
}


@end
