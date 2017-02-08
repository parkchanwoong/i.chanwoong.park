//
//  ViewController.m
//  AS0207
//
//  Created by 박찬웅 on 2017. 2. 7..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIScrollViewDelegate>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //UIView , UILabel , UIImageView , UIButton , UITextField , UIScrollView
    UIView *uv = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height)];
    uv.backgroundColor = [UIColor colorWithRed:230/255.0 green:88/255.0 blue:83/255.0 alpha:0.2];
    [self.view addSubview:uv];
    
    UILabel *lb = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4, self.view.frame.origin.y+40, self.view.frame.size.width/2, 30)];
    
    lb.text = @"연 습 장";
    lb.textColor = [UIColor blackColor];
    lb.textAlignment = 1;
    [self.view addSubview:lb];
    
    UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake(100, 200, 100  , 100)];
    [img setImage:[UIImage imageNamed:@"family.jpg"]];
    [img setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:img];
    
    
    [self.view addSubview:img];
    
    UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(self.view.frame.origin.x/4, self.view.frame.origin.y+120, self.view.frame.size.width, self.view.frame.size.height/8)];
    tf.placeholder = @"입력창";
    tf.textAlignment = 1;
    [self.view addSubview:tf];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(lb.frame.origin.x, tf.frame.origin.y+60, 100, 20);
    //UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(lb.frame.origin.x, tf.frame.origin.y+60, 100, 20)];
    [btn setTitle:@"마우스 올려봐" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitle:@"누르고있어" forState:UIControlStateHighlighted];
    [self.view addSubview:btn];
    
    
    
    
    
    
    UIScrollView *sv = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width  , self.view.frame.size.height)];
    [sv setContentSize:CGSizeMake(self.view.frame.size.width*2  , self.view.frame.size.height)];
    sv.delegate = self;
    sv.pagingEnabled = NO;
    [self.view addSubview:sv];
    
    UIView *newView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    newView1.backgroundColor = [UIColor blackColor];
    [sv addSubview:newView1];
    
    UIView *newView2 = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width*2, 0 , self.view.frame.size.width, self.view.frame.size.height)];
    newView2.backgroundColor = [UIColor redColor];
    [sv addSubview:newView2];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
