//
//  AddAlarmViewController.h
//  Location Aware Alarm
//
//  Created by Isaac Rosenberg on 12/8/13.
//  Copyright (c) 2013 Isaac Rosenberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "AFNetworking.h"

@interface AddAlarmViewController : UIViewController
{
    __weak IBOutlet UIDatePicker *setAlarmDate;
}

@property (nonatomic, retain) IBOutlet MKMapView *currentLocation;


@property (nonatomic, retain) IBOutlet UIBarButtonItem *doneButton;

@property (nonatomic, retain) CLLocationManager *locationManager;




-(IBAction) DismissAddAlarmView:(id)sender;
-(IBAction) AddAlarmToController:(id)sender;

//@protocol AlarmDelegate {
//    - (void) dismissAddAlarm:(NSDictionary)
//}

@end
