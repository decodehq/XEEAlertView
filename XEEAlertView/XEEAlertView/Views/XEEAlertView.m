//
//  XEEAlertView.m
//  Unii
//
//  Created by Andrija Cajic on 05/12/13.
//  Copyright (c) 2013 XEE Tech. All rights reserved.
//

#import "XEEAlertView.h"

@implementation XEEAlertView


+(instancetype) alertViewWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ...
{
    XEEAlertView* alertView = [[self alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:cancelButtonTitle otherButtonTitles:nil];
    
    if (alertView) {
        va_list ap;
        va_start(ap, otherButtonTitles);
        
        while (otherButtonTitles != nil) {
            [alertView addButtonWithTitle:otherButtonTitles];
            otherButtonTitles = va_arg(ap, NSString *);
        }
        
        va_end(ap);
    }
    
    return alertView;
}


-(instancetype) initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ...
{
    if (self = [super initWithTitle:title message:message delegate:delegate cancelButtonTitle:cancelButtonTitle otherButtonTitles:nil]) {
        va_list ap;
        va_start(ap, otherButtonTitles);
        
        while (otherButtonTitles != nil) {
            [self addButtonWithTitle:otherButtonTitles];
            otherButtonTitles = va_arg(ap, NSString *);
        }
        
        va_end(ap);
        
        self.delegate = self;
    }
    
    return self;
}


-(void) handleAction:(BlockAction)action
{
    _actionBlock = action;
}


-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (_actionBlock) _actionBlock(buttonIndex);
}

@end
