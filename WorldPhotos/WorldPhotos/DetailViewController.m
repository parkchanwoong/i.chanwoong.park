//
//  DetailViewController.m
//  WorldPhotos
//
//  Created by 박찬웅 on 2017. 9. 1..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "DetailViewController.h"
#import "WorldPhotosModel.h"
#import "MapViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    id appDelegate = [[UIApplication sharedApplication]delegate];
    self.modelWP = [appDelegate modelWP];
    self.selectedIndex = self.modelWP.selectedIndex;
    
    UILabel *leftLabel = [self.view viewWithTag:1];
    UILabel *rightLabel = [self.view viewWithTag:2];
    UIImageView *viewImage = [self.view viewWithTag:3];
    
    NSDictionary *dic = self.modelWP.arrayList[self.selectedIndex];
    
    leftLabel.text = dic[@"city"];
    rightLabel.text = dic[@"zone"];
    viewImage.image = [UIImage imageNamed:dic[@"image"]];
    
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Map"
                                                                        style:UIBarButtonItemStylePlain
                                                                        target:self
                                                                        action:@selector(touchMap:)];
    
}
- (void)touchMap:(id)sender
{
    MapViewController *vc = [[MapViewController alloc]initWithNibName:@"MapViewController" bundle:nil];
    
//    vc.modelWP = self.modelWP;
//    vc.selectedIndex = self.selectedIndex;
    
//    [self.navigationController pushViewController:vc animated:YES];
    [self presentViewController:vc animated:YES completion:nil];
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
