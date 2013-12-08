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

@synthesize DoneButtonTapped = _DoneButtonTapped;

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
    NSLog(@"HI");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [_doneButton addTarget:self action:@selector(DoneButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
