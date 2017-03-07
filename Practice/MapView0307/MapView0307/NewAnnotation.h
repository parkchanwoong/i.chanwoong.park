//
//  NewAnnotation.h
//  MapView0307
//
//  Created by 박찬웅 on 2017. 3. 7..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface NewAnnotation : NSObject
<MKAnnotation>

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
- (void)setCoordinate:(CLLocationCoordinate2D)newCoordinate;

@end
