//
//  ViewController.m
//  BS0210
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
    
    //가운데 글자 출력
    
    NSArray *array = @[@"K",@"O",@"R",@"E",@"A"];
    [self center:array];
    //NSArray *array = @[@"E",@"R",@"A",@"S",@"E",@"R"];
    
    
    
//    if (array.count % 2 == 1)
//    {
//        NSLog(@"%@",array[array.count/2]);
//        
//    }
//    else
//    {
//        NSLog(@"%@,%@",array[array.count/2-1],array[array.count/2]);
//    }
    
    
}

- (void)center:(NSArray *)array
{
    if (array.count % 2 == 1)
    {
        NSLog(@"%@",array[array.count/2]);
        
    }
    else
    {
        NSLog(@"%@,%@",array[array.count/2-1],array[array.count/2]);
    }
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
