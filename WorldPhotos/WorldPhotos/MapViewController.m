//
//  MapViewController.m
//  WorldPhotos
//
//  Created by 박찬웅 on 2017. 9. 1..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "MapViewController.h"
#import "WorldPhotosModel.h"
#import "AppDelegate.h"
@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.modelWP = [(AppDelegate *)[[UIApplication sharedApplication] delegate] modelWP];
    self.modelWP.selectedIndex = self.selectedIndex;

    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    button.frame = CGRectMake(20, 40,70, 70);
    [button setTitle:@"뒤로가기" forState:UIControlStateNormal];
    [button setTitle:@"빨리" forState:UIControlStateHighlighted];
    [button addTarget:self action:@selector(touchBack:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:button];
}

- (void)touchBack:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"dismissViewControllerAnimated");
    }];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSDictionary *dicInfo = self.modelWP.arrayList[self.selectedIndex];
    CLLocationDegrees lati = [dicInfo[@"latitude"] doubleValue] ;
    CLLocationDegrees longi = [dicInfo[@"longitude"]doubleValue];
    
    CLLocation *loc = [[CLLocation alloc]initWithLatitude:lati longitude:longi];
    
    MKCoordinateSpan span = MKCoordinateSpanMake(0.7, 0.7);
    MKCoordinateRegion region = MKCoordinateRegionMake(loc.coordinate, span);
    
    [self.viewMap setRegion:region animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
