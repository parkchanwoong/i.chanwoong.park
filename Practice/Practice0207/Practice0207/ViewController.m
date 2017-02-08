//
//  ViewController.m
//  Practice0207
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
    // Do any additional setup after loading the view, typically from a nib.
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0,  0, self.view.frame.size.width, self.view.frame.size.height)];
    
    [scrollView setContentSize:CGSizeMake(scrollView.frame.size.width*3, scrollView.frame.size.height*2)];
    
    scrollView.delegate = self;
    scrollView.pagingEnabled = YES;
    [self.view addSubview:scrollView];
    
    //뷰1
    
    UIView *newView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    newView1.backgroundColor = [UIColor blueColor];
    [scrollView addSubview:newView1];
    
    UIView *newView2 = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height)];
    newView2.backgroundColor = [UIColor greenColor];
    [scrollView addSubview:newView2];
    
    
    UIView *newView3 = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width*2, 0, self.view.frame.size.width, self.view.frame.size.height)];
    newView3.backgroundColor = [UIColor redColor];
    [scrollView addSubview:newView3];
    
    //NSMutableArray
    
   
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
