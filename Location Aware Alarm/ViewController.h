//
//  ViewController.h
//  Location Aware Alarm
//
//  Created by Isaac Rosenberg on 11/30/13.
//  Copyright (c) 2013 Isaac Rosenberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import "ObjectiveRecord.h" 

@interface ViewController : UIViewController
{
    __weak IBOutlet UIDatePicker *setAlarmDate;
//    CLG
}

-(IBAction) AlarmSetButtonTapped:(id)sender;
-(IBAction) AlarmCancelButtonTapped:(id)sender;

@end
