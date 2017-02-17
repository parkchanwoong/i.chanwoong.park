//
//  ViewController.m
//  Practice0214
//
//  Created by 박찬웅 on 2017. 2. 14..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width  , self.view.frame.size.height)];
    view.backgroundColor = [UIColor colorWithRed:45/255.0 green:48/255.0 blue:57/255.0 alpha:1];
    [self.view addSubview:view];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
