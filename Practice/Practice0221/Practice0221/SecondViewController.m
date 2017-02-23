//
//  SecondViewController.m
//  Practice0221
//
//  Created by 박찬웅 on 2017. 2. 21..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    UIView *uv = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.origin.x,self.view.frame.origin.y,self.view.frame.size.width,self.view.frame.size.height)];
    uv.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:uv];
   
    
    self.navigationItem.title = @"My Second VC";
    [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]];
    
    UIButton *back = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 35, 35)];
    [back setBackgroundImage:[UIImage imageNamed:@"back.jpg"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(backBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *front = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 35, 35)];
    [front setBackgroundImage:[UIImage imageNamed:@"front"] forState:UIControlStateNormal];
    [front addTarget:self action:@selector(frontBtnClik:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:back];
    self.navigationItem.leftBarButtonItem = item;
    
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc]initWithCustomView:front];
    self.navigationItem.rightBarButtonItem = item2;
    
    
}
- (void)backBtnClick:(UIButton *)sender
{
    NSLog(@"찍히나?");
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)frontBtnClik:(UIButton *)sender
{
    NSLog(@"2장에서 3장으로");
    ThirdViewController *tuv = [[ThirdViewController alloc]init];
    [self.navigationController pushViewController:tuv animated:YES];
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
