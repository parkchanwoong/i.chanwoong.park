//
//  ViewController.m
//  Navi1
//
//  Created by youngmin joo on 2017. 2. 21..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import "ViewController.h"
#import "CustomNaviBar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    //여기에서 시작
    
//    self.navigationItem.title = @"My VC";
//    [self.navigationController.navigationBar setBarTintColor:[UIColor blueColor]];
//    
//    
//    UIButton *back = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 35, 35)];
//    [back setBackgroundImage:[UIImage imageNamed:@"arrow-back"] forState:UIControlStateNormal];
//    [back addTarget:self action:@selector(backBtnClick:) forControlEvents:UIControlEventTouchUpInside];
//    
//    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:back];
//    self.navigationItem.leftBarButtonItem = item;
    
    //bar 숨김
    [self.navigationController setNavigationBarHidden:YES];
    
    CustomNaviBar *navi = [[CustomNaviBar alloc] init];
    [navi setTitle:@"VC1"];
    [navi setBarColor:[UIColor purpleColor]];
    [self.view addSubview:navi];
    
    [navi hiddenView];
//    [navi setIsShowBack:NO];
}

- (void)backBtnClick:(UIButton *)sender
{
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
