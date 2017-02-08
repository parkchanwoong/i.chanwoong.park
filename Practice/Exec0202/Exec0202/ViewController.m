//
//  ViewController.m
//  Exec0202
//
//  Created by 박찬웅 on 2017. 2. 2..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /*
     
    //1
     
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(15,15,self.view.frame.size.width-30,self.view.frame.size.height-30)];
    myView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:myView];
    myView.clipsToBounds = YES;  //삐져나가지 않게
    [myView setAlpha:0.1];   //뷰 투명도

     
    UIView *subView = [[UIView alloc] init];
    subView.frame = CGRectMake(15, 15, myView.frame.size.width-30,myView.frame.size.height-30);
    [subView setBackgroundColor:[UIColor redColor]];
    [myView addSubview:subView];
    
    
     
    UIView *smallView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, subView.frame.size.width-30, subView.frame.size.height-30)];
    [smallView setBackgroundColor:[UIColor greenColor]];
    [subView addSubview:smallView];
     
    */
    
    
    
    //2
    
    /*
    
    UIView *myView2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width-0, 64)];
    [myView2 setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:myView2];
    
    UIView *subView2 = [[UIView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width-0, self.view.frame.size.height-112)];
    [subView2 setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:subView2];
    
    UIView *smallView2 = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.origin.y+self.view.frame.size.height-48, self.view.frame.size.width-0, 48)];
    [smallView2 setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:smallView2];
     
     */

    //3
    
    /*
     
    UIView *stick1 = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x-50, self.view.center.y-50, 90, 10)];
    [stick1 setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:stick1];
    
    UIView *stick2 = [[UIView alloc]initWithFrame:CGRectMake(self.view.center.x+40, self.view.center.y-50, 10, 90)];
    [stick2 setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:stick2];
    
    UIView *stick3 = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x-40, self.view.center.y+40, 90, 10)];
    [stick3 setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:stick3];
    
    UIView *stick4 = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x-50, self.view.center.y-40, 10, 90)];
    [stick4 setBackgroundColor:[UIColor brownColor]];
    [self.view addSubview:stick4];
    
    //self.view.center.x;
    //self.view.center.y;
    
     */
    
    //4
    
    UIView *screen = [[UIView alloc] initWithFrame:CGRectMake(20, 40, self.view.frame.size.width-40, 160)];
    screen.layer.borderColor = [UIColor grayColor].CGColor;   //선 색
    screen.layer.borderWidth = 1;    //굵기?
    [screen setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:screen];
    
    
    UIImageView *square1 = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 60, 60)];
    //[square1 setBackgroundColor:[UIColor redColor]];
    square1.image = [UIImage imageNamed:@"ryan.jpg"];
    //square1.contentMode = UIViewContentModeScaleAspectFit;
    square1.contentMode = UIViewContentModeScaleAspectFill;
    [square1 setClipsToBounds:YES];
    //square1.contentMode = UIViewContentModeScaleToFill;
    [screen addSubview:square1];
    
    UILabel *square2 = [[UILabel alloc] initWithFrame:CGRectMake(square1.frame.origin.x+70, square1.frame.origin.y, self.view.frame.size.width-10, 40)];
    square2.text = @"Hello World";
    square2.font = [UIFont systemFontOfSize:40];
    square2.textColor = [UIColor colorWithRed:150.0/255.0 green:70/255.0 blue:100/255.0 alpha:0.5];
    //[square2 setBackgroundColor:[UIColor yellowColor]];
    [screen addSubview:square2];
    
    UILabel *square3 = [[UILabel alloc] initWithFrame:CGRectMake(square2.frame.origin.x, square2.frame.origin.y+50, self.view.frame.size.width-10, 30)];
    square3.text = @"Objective - C";
    square3.font = [UIFont systemFontOfSize:30];
    square3.textColor = [UIColor redColor];
    //[square3 setBackgroundColor:[UIColor blueColor]];
    [screen addSubview:square3];
    
    //버튼 객체 생성
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(90, 130, 200, 80);
    
    [btn setTitle:@"클릭하세요" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [btn setTitle:@"손 치우세요" forState:UIControlStateHighlighted];
    [btn addTarget:self action:@selector(didselectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    //UILabel
    //UIImageView

}

- (void)didselectedBtn:(UIButton *)sender
{
    NSLog(@"버튼을 클릭함");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
