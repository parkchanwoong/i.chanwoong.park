//
//  ViewController.m
//  MapView0307
//
//  Created by 박찬웅 on 2017. 3. 7..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h" //  ""파일하나
#import <MapKit/MapKit.h>  //  <>프레임워크
#import <CoreLocation/CoreLocation.h>
#import "NewAnnotation.h"

static const CGFloat BASE_LATITUDE = 48.853258;
static const CGFloat BASE_LONGITUDE = 2.357701;

@interface ViewController ()
<CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property  CLLocationManager *locationManager;
@end

@implementation ViewController

- (void)viewDidLoad {
    
    
    [super viewDidLoad];
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(BASE_LATITUDE, BASE_LONGITUDE);
    
    MKCoordinateSpan span = MKCoordinateSpanMake(1, 1);
    
    MKCoordinateRegion region = MKCoordinateRegionMake(coordinate, span);
    
    [self.mapView setRegion:region];
    
    self.locationManager = [[CLLocationManager alloc]init];
    self.locationManager.delegate = self;
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [self.locationManager startUpdatingLocation];
    
    
    [self.locationManager requestWhenInUseAuthorization];
    
    
    
    [self.locationManager startUpdatingLocation];
//    [self.locationManager requestAlwaysAuthorization];
    
    
    [self.mapView setShowsUserLocation:YES];
    

    
//    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(BASE_LATITUDE, BASE_LONGITUDE);
//    MKCoordinateSpan span = MKCoordinateSpanMake(0.1, 0.1);
//    
//    MKCoordinateRegion region = MKCoordinateRegionMake(coordinate, span);
//    [self.mapView setRegion:region];
}
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations
{
//    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(BASE_LATITUDE, BASE_LONGITUDE);
//    
//    MKCoordinateSpan span = MKCoordinateSpanMake(1, 1);
//    
//    MKCoordinateRegion region = MKCoordinateRegionMake(coordinate, span);
//    
//    [self.mapView setRegion:region];
    
    NewAnnotation *annotation = [[NewAnnotation alloc] init];
    
    [self.mapView addAnnotation:annotation];
    
    [manager stopUpdatingLocation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
