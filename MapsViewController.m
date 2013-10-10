//
//  MapsViewController.m
//  W.i.m.A
//
//  Created by Martin on 10.10.13.
//  Copyright (c) 2013 Martin Kuenz. All rights reserved.
//

#import "MapsViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@interface MapsViewController ()

@end

@implementation MapsViewController {
    GMSMapView *mapView_;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadView
{
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:1.285 longitude:103.848 zoom:1];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.mapType = kGMSTypeHybrid;
    mapView_.settings.myLocationButton = YES;
    self.view = mapView_;
}

@end
