//
//  ViewController.m
//  TableViewPrac0312
//
//  Created by 박찬웅 on 2017. 3. 12..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *showBooks;
@property (weak, nonatomic) IBOutlet UILabel *labelTest;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.labelTest.text = @"dkjfhaskdjfkashdfkljadkjfhaskdjfkashdfkljadkjfhaskdjfkashdfkljadkjfhaskdjfkashdfkljadkjfhaskdjfkashdfkljadkjfhaskdjfkashdfkljadkjfhaskdjfkashdfkljadkjfhaskdjfkashdfklja";
    
    self.labelTest.numberOfLines = 0;
    [self.labelTest sizeToFit];
//    [self.labelTest setLineBreakMode:NSLineBreakByWordWrapping];
//    [self.labelTest setAdjustsFontSizeToFitWidth:YES];
 
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
