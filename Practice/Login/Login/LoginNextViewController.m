//
//  LoginNextViewController.m
//  Login
//
//  Created by 박찬웅 on 2017. 2. 24..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "LoginNextViewController.h"

@interface LoginNextViewController ()

@property UIButton *btnBack;

@end

@implementation LoginNextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.btnBack = [[UIButton alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
    [self.btnBack setTitle:@"돌아가기" forState:UIControlStateNormal];
    [self.btnBack setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.btnBack setTitleColor:[UIColor purpleColor] forState:UIControlStateHighlighted];
    [self.btnBack addTarget:self action:@selector(backButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.btnBack];
}

- (void)backButton:(UIButton *)sender
{
    NSLog(@"작동");
    [self dismissViewControllerAnimated:YES completion:nil];
    
}








- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
