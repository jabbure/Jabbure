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
#import "CustomFilterWindow.h"
#import <GoogleMaps/GoogleMaps.h>

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self createMapView];
    [self createSearchBar];
    [self createSliders];
    
    [self refreshMapView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma create views

- (void)createMapView
{
    self.mapView = [GMSMapView mapWithFrame:self.view.bounds camera:[GMSCameraPosition cameraWithLatitude:39.283145 longitude:-76.593221 zoom:18]];
    self.mapView.delegate = self;
    self.mapView.myLocationEnabled = YES;
    self.mapView.indoorEnabled = YES;
    self.mapView.settings.compassButton = YES;
    self.mapView.settings.myLocationButton = YES;
    self.view = self.mapView;
}

- (void)createSearchBar
{
    self.searchBar = [[UISearchBar alloc] init];
    self.searchBar.delegate = self;
    [self.searchBar sizeToFit];
    self.navigationItem.titleView = self.searchBar;
}

- (void)createSliders
{
    CustomFilterWindow *filterWindow = [[[NSBundle mainBundle] loadNibNamed:@"FilterWindow" owner:self options:nil] objectAtIndex:0];
    filterWindow.frame = CGRectMake(0, self.view.frame.size.height-filterWindow.frame.size.height, filterWindow.frame.size.width, filterWindow.frame.size.height);
    
    
    [self.view insertSubview:filterWindow aboveSubview:self.mapView];
}

#pragma refresh functions
- (void)refreshMapView
{
    [self.mapView clear];
    
    // create markers on the map
    int counter = 0;
    for (Place *place in [JabburePlaces places])
    {
        if([self.searchBar.text isEqualToString:@""] || [place.searchString rangeOfString:self.searchBar.text options:NSCaseInsensitiveSearch].location != NSNotFound)
        {
            GMSMarker *marker = [[GMSMarker alloc] init];
            marker.position = CLLocationCoordinate2DMake(place.latitude, place.longitude);
            marker.title = [NSString stringWithFormat:@"%d", counter];
            marker.map = self.mapView;
        }
        
        counter++;
    }
}


#pragma GMSMapViewDelegate methods

- (UIView *) mapView:(GMSMapView *)mapView markerInfoWindow:(GMSMarker *)marker
{
    CustomInfoWindow *infoWindow = [[[NSBundle mainBundle] loadNibNamed:@"InfoWindow" owner:self options:nil] objectAtIndex:0];
    
    Place *place = [[JabburePlaces places] objectAtIndex:[marker.title intValue]];
    
    infoWindow.name.text = place.name;
    infoWindow.neighborhood.text = place.neighborhood;
    infoWindow.address.text = [place address];
    
    return infoWindow;
}

- (void)mapView:(GMSMapView *)mapView didTapAtCoordinate:(CLLocationCoordinate2D)coordinate
{
    [self resignSearchBarAndRefreshMapView];
}

- (BOOL)mapView:(GMSMapView *)mapView didTapMarker:(GMSMarker *)marker
{
    [self resignSearchBarAndRefreshMapView];
    return NO;
}

#pragma UISearchBarDelegate methods

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [self resignSearchBarAndRefreshMapView];
}

#pragma helper functions

- (void)resignSearchBarAndRefreshMapView
{
    [self.searchBar resignFirstResponder];
    [self refreshMapView];
}

@end
