//
//  XEEAlertView.h
//  Unii
//
//  Created by Andrija Cajic on 05/12/13.
//  Copyright (c) 2013 XEE Tech. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^BlockAction)(int buttonIndex);

/**
 Wrapper around UIAlertView which provides simplified interface. It is especially convenient in situations where multiple alert views can be activated from inside a single view.
 
 */
@interface XEEAlertView : UIAlertView <UIAlertViewDelegate>
{
    BlockAction _actionBlock;
}

/**
 Static initializer. It is an equivalent of UIAlertView's initializer.
 */
+(instancetype) alertViewWithTitle:(NSString*)title message:(NSString*)message cancelButtonTitle:(NSString*)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION;

/**
 When user interacts with XEEAlertView, this block will be executed.
 @param *action* block delivering index of the button that was pressed
 */
-(void) handleAction:(BlockAction)action;

@end
