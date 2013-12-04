//
//  ViewController.m
//  Location Aware Alarm
//
//  Created by Isaac Rosenberg on 11/30/13.
//  Copyright (c) 2013 Isaac Rosenberg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize locationManager;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction) AlarmSetButtonTapped:(id)sender {
    
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
    NSLog(@"Alarm Set button tapped. Date: %@", dateTimeString);

}

-(IBAction) AlarmCancelButtonTapped:(id)sender {
    NSLog(@"Alarm Button Canceled");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
