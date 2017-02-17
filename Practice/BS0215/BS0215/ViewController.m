//
//  ViewController.m
//  BS0215
//
//  Created by 박찬웅 on 2017. 2. 15..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //약수의 합을 구하는 알고리즘
    
    NSUInteger num = 17;
    [self measureSum:num];
    
    
}
- (void)measureSum:(NSUInteger)sender
{
    NSUInteger sum = 0;
    
    for(NSUInteger i = 1; i <= sender; i++)
    {
        NSUInteger numTemp = sender / i;
        if (sender % i == 0)
        {
            sum = sum + numTemp;
            NSLog(@"약수 : %lu",numTemp);
        }
        
    }
    NSLog(@"약수 sum = %lu",sum);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
