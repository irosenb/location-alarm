//
//  ViewController.h
//  Location Aware Alarm
//
//  Created by Isaac Rosenberg on 11/30/13.
//  Copyright (c) 2013 Isaac Rosenberg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    __weak IBOutlet UIDatePicker *setAlarmDate;
}

-(IBAction) AlarmSetButtonTapped:(id)sender;
-(IBAction) AlarmCancelButtonTapped:(id)sender;

@end
