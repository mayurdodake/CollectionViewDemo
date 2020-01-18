//
//  ViewController.m
//  MapViewDemo
//
//  Created by MAC2 on 7/18/18.
//  Copyright © 2018 MAC2. All rights reserved.
//

#import "ViewController.h"
//#import <AddressBook/AddressBook.h>
#import <Contacts/Contacts.h>



#define METERS_PER_MILE 1609.344

@interface ViewController ()

@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *address;
@property (nonatomic,assign) CLLocationCoordinate2D myCoordinate;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    


}

-(void)viewWillAppear:(BOOL)animated
{
    // show Region on map
    
//    CLLocationCoordinate2D zoomLocation;
//    
//    zoomLocation.latitude = 39.281516;
//    zoomLocation.longitude = -76.580806;
//    
//    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.5*METERS_PER_MILE, 0.5*METERS_PER_MILE);
//    
//    [_mapView setRegion:viewRegion animated:YES];

    
    
    // Plotting annotation on map
    
//    CLLocationCoordinate2D myCoordinate;
//    MKPointAnnotation *annotation = [[MKPointAnnotation alloc]init];
//    myCoordinate.latitude = 13.04016;
//    myCoordinate.longitude = 80.243044;
//    
//    annotation.coordinate = myCoordinate;
//    [self.mapView addAnnotation:annotation];

}

//-(id)initWithName:(NSString *)name address:(NSString *)address coordinate:(CLLocationCoordinate2D)coordinate
//{
//    if ((self = [super init])) {
//        
//        if ([name isKindOfClass:[NSString class]]) {
//            
//            self.name = name;
//        }
//        else
//        {
//            self.name = @"Unknown Charge";
//        }
//        self.address = address;
//        self.myCoordinate = coordinate;
//    }
//    return self;
//}
//
//-(NSString *)title
//{
//    return _name;
//}
//
//-(NSString *)subtitle
//{
//    return _address;
//}
//
//-(CLLocationCoordinate2D)coordinate
//{
//    return _myCoordinate;
//}
//
//-(MKMapItem *)mapItem
//{
//    NSDictionary *addressDic = @{(NSString *)kABPersonAddressStreetkey : _address};
//    
//    MKPlacemark *placeMark = [[MKPlacemark alloc]initWithCoordinate:self.myCoordinate addressDictionary:addressDic];
//    
//    MKMapItem *mapItem = [[MKMapItem alloc]initWithPlacemark:placeMark];
//    mapItem.name = self.title;
//    
//    return mapItem;
//    
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
