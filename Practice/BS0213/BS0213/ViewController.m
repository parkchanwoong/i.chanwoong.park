//
//  ViewController.m
//  BS0213
//
//  Created by 박찬웅 on 2017. 2. 13..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Harshad Number
    
    NSString *num = @"372440";
    [self harshad:num];
    
}


- (void)harshad:(NSString *)num
{
    NSUInteger numInt = [num integerValue];
    NSUInteger sum = 0;
    
    for (NSUInteger i = 0; i < num.length; i++)
    {
        NSString *temp = [num substringWithRange:NSMakeRange(i,1)];  //i번째에서 1개만큼
        NSInteger tempNum = [temp integerValue];
        sum+=tempNum;
    }
    
    if (numInt % sum == 0)
    {
        NSLog(@"Harshad");
    }
    else
    {
        NSLog(@"ㄴㄴ");
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
