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

-(IBAction) DismissAddAlarmView:(id)sender {
//    NSLog(@"Button pressed: %@", [sender currentTitle]);
//    NSLog(@"Button pressed: %ld", (long)[sender tag]);
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction) AddAlarmToController:(id)sender {
    locationManager = [[CLLocationManager alloc] init];
	locationManager.delegate = (id)self;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    locationManager.distanceFilter = kCLDistanceFilterNone;
    [locationManager startUpdatingLocation];
    CLLocation *location = [locationManager location];
    
    NSLog(@"Location is %@", location);
    [locationManager stopUpdatingLocation];
    //    [CoreDataManager sharedManager].modelName = @"Alarm";
    //    Person *john = [Person create];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.timeZone = [NSTimeZone defaultTimeZone];
    dateFormatter.timeStyle = NSDateFormatterShortStyle;
    dateFormatter.dateStyle = NSDateFormatterShortStyle;
    
    //    john.time = [dateFormatter stringFromDate: setAlarmDate.date];
    //    john.
    
    NSString *dateTimeString = [dateFormatter stringFromDate: setAlarmDate.date];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    [_doneButton addTarget:self action:@selector(DoneButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
