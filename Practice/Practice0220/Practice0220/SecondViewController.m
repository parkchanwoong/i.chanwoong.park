//
//  SecondViewController.m
//  Practice0220
//
//  Created by 박찬웅 on 2017. 2. 20..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn1 = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 40)];
    [btn1 setTitle:@"BEFORE" forState:UIControlStateNormal];
    
    
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [btn1 addTarget:self action:@selector(beforePage:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn1];
}

- (void)beforePage:(UIButton *)sender
{
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
