//
//  MapViewController.h
//  WorldPhotos
//
//  Created by 박찬웅 on 2017. 9. 1..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@class WorldPhotosModel;
@interface MapViewController : UIViewController

@property (nonatomic , weak) IBOutlet MKMapView *viewMap;

@property (nonatomic , strong) WorldPhotosModel *modelWP;
@property (nonatomic , assign) NSInteger selectedIndex;

@end
