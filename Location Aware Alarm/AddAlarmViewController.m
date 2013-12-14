//
//  AddAlarmViewController.m
//  Location Aware Alarm
//
//  Created by Isaac Rosenberg on 12/8/13.
//  Copyright (c) 2013 Isaac Rosenberg. All rights reserved.
//

#import "AddAlarmViewController.h"

@interface AddAlarmViewController ()

@end

@implementation AddAlarmViewController

@synthesize locationManager;
@synthesize currentLocation;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark - Cancel alarm

-(IBAction) DismissAddAlarmView:(id)sender {
//    NSLog(@"Button pressed: %@", [sender currentTitle]);
//    NSLog(@"Button pressed: %ld", (long)[sender tag]);
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Add alarm

-(IBAction) AddAlarmToController:(id)sender {
    CLLocation *location = currentLocation.userLocation.location;
    
    NSLog(@"Location is %@", location);

    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.timeZone = [NSTimeZone defaultTimeZone];
    dateFormatter.timeStyle = NSDateFormatterShortStyle;
    dateFormatter.dateStyle = NSDateFormatterShortStyle;
    
    NSString *dateTimeString = [dateFormatter stringFromDate: setAlarmDate.date];
    NSLog(@"%@", dateTimeString);
    
    // Request server to queue alarm
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    NSDictionary *data = @{
                           @"location": location,
                           @"time": dateTimeString
                           };
    
    [manager POST:@"http://lol.com" parameters:data success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"yay!");
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        NSLog(@"Operation could not be completed");
    }];
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
//-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
//    
//    MKCoordinateRegion mapRegion;
//    mapRegion.center = currentLocation.userLocation.coordinate;
//    mapRegion.span.latitudeDelta  = 0.002;
//    mapRegion.span.longitudeDelta = 0.002;
//    
//    [currentLocation setRegion:mapRegion animated:YES];
//    NSLog(@"Removing self");
//    [self.currentLocation.userLocation removeObserver:self forKeyPath:@"location"];
//
//}

#pragma mark - load view

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.currentLocation.showsUserLocation = YES;
    [currentLocation setUserTrackingMode:MKUserTrackingModeFollow animated:YES];
    
//    [self.currentLocation.userLocation addObserver:self forKeyPath:@"location"
//        options:(NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld)
//        context:NULL];
    NSLog(@"Added watcher");
//    [_doneButton addTarget:self action:@selector(DoneButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
