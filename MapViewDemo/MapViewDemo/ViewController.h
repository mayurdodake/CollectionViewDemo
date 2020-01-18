//
//  ViewController.h
//  MapViewDemo
//
//  Created by MAC2 on 7/18/18.
//  Copyright © 2018 MAC2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <Foundation/Foundation.h>

@interface ViewController : UIViewController<MKAnnotation>

@property (strong, nonatomic) IBOutlet MKMapView *mapView;


-(id)initWithName:(NSString *)name address:(NSString *)address coordinate:(CLLocationCoordinate2D)coordinate;

- (MKMapItem *)mapItem;

@end

