//
//  DetailViewController.h
//  WorldPhotos
//
//  Created by 박찬웅 on 2017. 9. 1..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WorldPhotosModel;

@interface DetailViewController : UIViewController

@property(nonatomic , strong) WorldPhotosModel *modelWP;
@property(nonatomic , assign) NSInteger selectedIndex;

@end
