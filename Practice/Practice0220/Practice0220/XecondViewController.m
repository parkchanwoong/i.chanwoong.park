//
//  XecondViewController.m
//  Practice0220
//
//  Created by 박찬웅 on 2017. 2. 20..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "XecondViewController.h"

@interface XecondViewController ()

@end

@implementation XecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btnBack = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 40)];
    [btnBack setTitle:@"BACK" forState:UIControlStateNormal];
    [btnBack setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btnBack setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [btnBack setBackgroundColor:[UIColor yellowColor]];
    [btnBack addTarget:self action:@selector(BackToPage:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btnBack];
}

- (void)BackToPage:(UIButton *)sender
{
    //[self dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController popViewControllerAnimated:YES];
    
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
