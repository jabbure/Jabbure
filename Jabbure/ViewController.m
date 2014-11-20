//
//  ViewController.m
//  Jabbure
//
//  Created by Prasad Ankem on 11/4/14.
//  Copyright (c) 2014 Prasad Ankem. All rights reserved.
//

#import "ViewController.h"
#import "LatitudeLongitude.h"
#import <GoogleMaps/GoogleMaps.h>

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:39.283145
                                                            longitude:-76.593221
                                                                 zoom:18];
    GMSMapView *mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    mapView_.indoorEnabled = YES;
    mapView_.settings.compassButton = YES;
    mapView_.settings.myLocationButton = YES;
    self.view = mapView_;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(39.283145, -76.593221);
    marker.title = @"Baltimore";
    marker.snippet = @"Maryland";
    marker.map = mapView_;

    GMSMarker *marker2 = [[GMSMarker alloc] init];
    marker2.position = CLLocationCoordinate2DMake(39.282008, -76.592179);
    marker2.title = @"Baltimore";
    marker2.snippet = @"Maryland";
    marker2.map = mapView_;

    GMSMarker *marker3 = [[GMSMarker alloc] init];
    marker3.position = CLLocationCoordinate2DMake(39.282042, -76.591876);
    marker3.title = @"Baltimore";
    marker3.snippet = @"Maryland";
    marker3.map = mapView_;

    GMSMarker *marker4 = [[GMSMarker alloc] init];
    marker4.position = CLLocationCoordinate2DMake(39.282031, -76.591758);
    marker4.title = @"Baltimore";
    marker4.snippet = @"Maryland";
    marker4.map = mapView_;

    GMSMarker *marker5 = [[GMSMarker alloc] init];
    marker5.position = CLLocationCoordinate2DMake(39.282072, -76.591574);
    marker5.title = @"Baltimore";
    marker5.snippet = @"Maryland";
    marker5.map = mapView_;

    GMSMarker *marker6 = [[GMSMarker alloc] init];
    marker6.position = CLLocationCoordinate2DMake(39.282015, -76.591348);
    marker6.title = @"Baltimore";
    marker6.snippet = @"Maryland";
    marker6.map = mapView_;
    
    NSArray *places = [LatitudeLongitude places];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
