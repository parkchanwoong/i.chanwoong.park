//
//  ViewController.m
//  Practice0221
//
//  Created by 박찬웅 on 2017. 2. 21..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"My VC";
    [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]];
    
   
    
    UIButton *front = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 35, 35)];
    [front setBackgroundImage:[UIImage imageNamed:@"front"] forState:UIControlStateNormal];
    [front addTarget:self action:@selector(frontBtnClick:) forControlEvents:UIControlEventTouchDown];
    
    
    
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc]initWithCustomView:front];
    self.navigationItem.rightBarButtonItem = item2;
}



- (void)frontBtnClick:(UIButton *)sender
{
    NSLog(@"앞으로 찍히나?");
    SecondViewController *uv = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:uv animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
