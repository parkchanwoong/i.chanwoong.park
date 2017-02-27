//
//  ViewController.m
//  Practice0227
//
//  Created by 박찬웅 on 2017. 2. 27..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Lb;


@property (nonatomic,weak) IBOutlet UIView *testView;
@property (nonatomic , weak) IBOutlet UILabel *Label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    }

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.testView.backgroundColor = [UIColor blueColor];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnAction:(UIButton *)sender
{
    self.Label.text = @"버튼 클릭됨";
}
- (IBAction)touchDownAction:(id)sender {
}

@end
