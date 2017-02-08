//
//  ViewController.m
//  Button
//
//  Created by 박찬웅 on 2017. 2. 6..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UIButton *btn1;
@property UIButton *btn2;
@property UIButton *beforSelectedBtn; //변경 전 상태를 넣어둘것.

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    //self.btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    //self.btn1.frame = CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
    self.btn1 = [[UIButton alloc] initWithFrame:CGRectMake(20, 20, self.view.frame.size.width-40, 40)];
    [self.btn1 setTitle:@"클릭" forState:UIControlStateNormal];
    [self.btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.btn1 addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.btn1];
    
    
    self.btn2 = [[UIButton alloc] initWithFrame:CGRectMake(20, 50, self.view.frame.size.width-40, 40)];
    [self.btn2 setTitle:@"클릭2" forState:UIControlStateNormal];
    [self.btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.btn2 addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.btn2];
    
//    self.lab1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 50, self.view.frame.size.width-40, 40)];
//    self.lab1.text =@"색상변경";
//    self.lab1.font = [UIFont systemFontOfSize:20];
//    self.lab1.textAlignment = NSTextAlignmentCenter;
//    [self.view addSubview:self.lab1];
    
}

- (void)change:(UIButton *)changeRed
{
    [self.beforSelectedBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal]; //비포에 블랙칼라를 넣어둠
    
    NSLog(@"1번 버튼누름");
    [changeRed setTitleColor:[UIColor redColor] forState:UIControlStateNormal]; //누른 버튼의 색을 변경
    
    self.beforSelectedBtn = changeRed; //비포에 누른버튼을 넣음
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
