//
//  ViewController.m
//  Practice0220
//
//  Created by 박찬웅 on 2017. 2. 20..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "XecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn1 = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 40)];
    [btn1 setTitle:@"NEXT" forState:UIControlStateNormal];
    [btn1 setBackgroundColor:[UIColor yellowColor]];
    //btn1 = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [btn1 addTarget:self action:@selector(nextPage:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn1];
}

- (void)nextPage:(UIButton *)sender
{//다음 페이지로 이동
    //*************스토리 보드 사용법***************/ 
    //1. 스토리보드 객체 만들기
    //UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    //2. 뷰컨트롤러 객체 만들기
    //SecondViewController *sVC = [storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    
    
    
    //***********XIB 사용법**********/
    //XecondViewController *xVC = [[XecondViewController alloc]initWithNibName:@"XecondViewController" bundle:nil];
    XecondViewController *xVC = [[XecondViewController alloc]init];
    [xVC setModalTransitionStyle:UIModalTransitionStylePartialCurl];
    
    
    
    //3. 페이지 전환
    //[self presentViewController:sVC animated:YES completion:nil];
    //[self presentViewController:xVC animated:YES completion:nil];
    [self.navigationController pushViewController:xVC animated:YES];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
