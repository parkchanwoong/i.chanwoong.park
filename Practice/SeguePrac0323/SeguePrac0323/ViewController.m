//
//  ViewController.m
//  SeguePrac0323
//
//  Created by 박찬웅 on 2017. 3. 23..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label1;

@end

@implementation ViewController

//- (void)viewWillAppear:(BOOL)animated
//{
//  sleep(2);
//    for (NSInteger i = 1; i < 10; i += 1) {
//        UILabel *label2 = [[UILabel alloc]initWithFrame:CGRectMake(50 , 50 + i*10, 10, 20)];
//        [label2 setText:@"abc"];
//        [label2 setTextColor:[UIColor blackColor]];
//        [self.view addSubview:label2];
//    }
//}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn1 = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 50, 50)];
    [btn1 setTitle:@"다음" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    
//    [self performSegueWithIdentifier:@"testSegue" sender:self];
}

//- (void)viewDidAppear:(BOOL)animated
//{
//    sleep(3);
//    [self performSegueWithIdentifier:@"next" sender:self];
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)myUnwindAction:(UIStoryboardSegue *)unwindSegue
{
    self.label1.text = @"바뀌었다";
}

- (void)next:(UIButton *)sender
{
    [self performSegueWithIdentifier:@"next" sender:self];
}

@end
