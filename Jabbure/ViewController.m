//
//  ViewController.m
//  Jabbure
//
//  Created by Prasad Ankem on 11/4/14.
//  Copyright (c) 2014 Prasad Ankem. All rights reserved.
//

#import "ViewController.h"
#import "JabburePlaces.h"
#import "Place.h"
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
    
    // create markers on the map
    for (Place *place in [JabburePlaces places])
    {
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(place.latitude, place.longitude);
        marker.title = place.name;
        marker.snippet = [NSString stringWithFormat:@"%@, %@, %@, %d", place.street, place.city, place.state, place.zipcode];
        marker.map = mapView_;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
