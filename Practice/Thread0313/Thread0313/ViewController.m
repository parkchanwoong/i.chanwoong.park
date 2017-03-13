//
//  ViewController.m
//  Thread0313
//
//  Created by 박찬웅 on 2017. 3. 13..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property NSThread *thread;
@property Boolean stop;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad]; 
    // Do any additional setup after loading the view, typically from a nib.

    
//    self.thread = [[NSThread alloc] initWithTarget:self selector:@selector(threadAction:) object:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)click:(UIButton *)sender
{
    self.thread = [[NSThread alloc] initWithTarget:self selector:@selector(threadAction:) object:nil];
    [self.thread start];
    
}
- (void)threadAction:(NSString *)str
{
    NSInteger i = 0;
    while (!self.thread.cancelled) {
        
        
        [self performSelectorOnMainThread:@selector(changeText:) withObject:[NSString stringWithFormat:@"%ld",(long)i++] waitUntilDone:YES];
        sleep(1);
        

    }
    [self.label2 setText:@"완료"];
}
- (void)changeText:(NSString *)str
{
    [self.label1 setText:str];
}
- (IBAction)cancel:(UIButton *)sender
{
    [self.thread cancel];
    
}
- (IBAction)reset:(UIButton *)sender
{
    self.label1.text = @"처음";
}
@end
