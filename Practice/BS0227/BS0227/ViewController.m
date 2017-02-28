//
//  ViewController.m
//  BS0227
//
//  Created by 박찬웅 on 2017. 2. 27..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>
@property UITextField  *TF;
@property UILabel *resultLB;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITextField *TF = [[UITextField alloc]initWithFrame:CGRectMake(50, 50, 150, 30)];
    TF.layer.borderWidth = 2;
    TF.layer.borderColor = [UIColor grayColor].CGColor;
    TF.delegate = self;
    [self.view addSubview:TF];
    
    self.TF = TF;
    
    UILabel *resultLB = [[UILabel alloc]initWithFrame:CGRectMake(50, 120, 150, 30)];
    resultLB.layer.borderWidth = 2;
    resultLB.layer.borderColor = [UIColor blackColor].CGColor;
    //self.resultLB.text = @"ㅋㅋ";
    resultLB.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:resultLB];
    self.resultLB = resultLB;
    
    
    
    
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"리턴누르기");
    NSInteger num = [self.TF.text integerValue];
    NSString *number = [NSString stringWithFormat:@"결과 %lu",[self sosoo:num]];
    self.resultLB.text = number;
    [textField resignFirstResponder];
    return YES;
}


- (NSInteger)sosoo:(NSInteger)number
{
    
    NSMutableArray *arr = [[NSMutableArray alloc]init];
    for (NSInteger i = 1; i <= number; i++)
    {
        NSInteger count = 0;
        for (NSInteger j = 1; j <= i; j++)
        {
            if (i % j == 0)
            {
                count += 1;
            }
        }
        
        if(count == 2)
        {
            [arr addObject:[NSString stringWithFormat:@"%ld", i]];
        }
        
    }
    
    NSLog(@"%@", arr);
    return arr.count;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
