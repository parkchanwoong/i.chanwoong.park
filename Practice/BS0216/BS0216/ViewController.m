//
//  ViewController.m
//  BS0216
//
//  Created by 박찬웅 on 2017. 2. 16..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //콜라츠 추측
    
    NSUInteger num = 704623;
    [self colatz:num];
    
}


- (void)colatz:(NSUInteger)num
{
    NSUInteger numCount = 0;
    for (NSUInteger i = 0; i < INFINITY; i++)
    {
        
        if (num % 2 ==0)
        {
            num = num / 2;
        }
        else if(num == 1)
        {
            break;
        }
        else
        {
            num = 3 * num + 1;
        }
        numCount += 1;
    }
    if (numCount >= 500)
    {
        NSLog(@"-1");
    }
    else
    {
        NSLog(@"%lu",numCount);
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
