//
//  ViewController.m
//  XEEAlertView
//
//  Created by Andrija Cajic on 06/12/13.
//  Copyright (c) 2013 XEE Tech. All rights reserved.
//

#import "ViewController.h"
#import "XEEAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

-(void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    XEEAlertView* alertView = [XEEAlertView alertViewWithTitle:@"Are you sure?" message:@"You are about to test XEEAlertView. Proceed?" cancelButtonTitle:@"No" otherButtonTitles:@"Yes", @"Maybe", nil];
    [alertView handleAction:^(int buttonIndex) {
        NSLog(@"Button index pressed %d", buttonIndex);
    }];
    [alertView show];
}

@end
