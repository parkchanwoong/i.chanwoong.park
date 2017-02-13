//
//  ViewController.m
//  AS0210
//
//  Created by 박찬웅 on 2017. 2. 10..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
//    //별찍기
//    
//    NSUInteger number = 5;
//    [self reverseStar:number];
//    
//    //홀 짝 판별기
//    NSUInteger number1 = 123444;
//    [self evenOrOdd:number1];
    
    //최소값 최대값 구하기
    NSString *string1 = @"4|3|6|2|9|1|5|7|8";
    [self getMinMaxString:string1];

    //NSArray *arr = @[@"apple",@"bear",@"cat",@"dog"];
    //arr = @[@"apple",@"bear",@"cat",@"dog",@"elephant"];
    
  
}
////별찍기
//- (void)reverseStar:(NSUInteger)num
//{
//    printf("별 거꾸로\n");
//    for (NSUInteger i = 0; i < num; i++) {
//        for (NSUInteger j = 5; j > i; j--) {
//            printf("*");
//            
//        }
//        printf("\n");
//    }printf("\n");
//}
////홀 짝 판별기
//- (void)evenOrOdd:(NSUInteger)num1
//{
//    printf("홀 짝 판별기\n");
//    printf("넣은 값 %lu\n",num1);
//    if (num1 % 2 == 0)
//    {
//        printf("짝수");
//    }
//    else
//    {
//    printf("홀수");
//    }
//}
//최소값 최대값 구하기  - (NSComparisonResult)localizedCompare:(NSString *)string;
-  (void)getMinMaxString:(NSString *)str
{
    NSArray *arry = [str componentsSeparatedByString:@"|"];
    
    
    NSInteger max = 0 ;
    NSInteger min = 0;
    for (NSString *temp in arry)
    {
        NSInteger intTemp = [temp integerValue];
        
        if( min == 0 )
        {
            min = intTemp;
        }
        else if ( intTemp < min)
        {
            min = intTemp;
        }
        
        if(intTemp > max)
        {
            max = intTemp;
        }
    }
    NSLog(@"최소값은 %lu 최대값은 %lu",min,max);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
