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
#import "CustomInfoWindow.h"
#import <GoogleMaps/GoogleMaps.h>

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self createMapView];
}

- (void)createMapView
{
    self.mapView = [GMSMapView mapWithFrame:CGRectZero camera:[GMSCameraPosition cameraWithLatitude:39.283145 longitude:-76.593221 zoom:18]];
    self.mapView.delegate = self;
    self.mapView.myLocationEnabled = YES;
    self.mapView.indoorEnabled = YES;
    self.mapView.settings.compassButton = YES;
    self.mapView.settings.myLocationButton = YES;
    self.view = self.mapView;
    
    // create markers on the map
    int counter = 0;
    for (Place *place in [JabburePlaces places])
    {
        GMSMarker *marker = [[GMSMarker alloc] init];
        marker.position = CLLocationCoordinate2DMake(place.latitude, place.longitude);
        marker.title = [NSString stringWithFormat:@"%d", counter];
        marker.map = self.mapView;
        
        counter++;
    }
}

- (UIView *) mapView:(GMSMapView *)mapView markerInfoWindow:(GMSMarker *)marker
{
    CustomInfoWindow *infoWindow = [[[NSBundle mainBundle] loadNibNamed:@"InfoWindow" owner:self options:nil] objectAtIndex:0];
    
    Place *place = [[JabburePlaces places] objectAtIndex:[marker.title intValue]];
    
    infoWindow.name.text = place.name;
    infoWindow.neighborhood.text = place.neighborhood;
    infoWindow.address.text = [place address];
    
    return infoWindow;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
