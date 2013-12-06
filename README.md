![Alt text](/images/xee_01.png)


XEEAlertView
============

XEEAlertView is a wrapper around UIAlertView which provides simplified interface. It is especially convenient in situations where multiple alert views can be activated from inside a single view.

```objc

XEEAlertView* alertView = [XEEAlertView alertViewWithTitle:@"Are you sure?" message:@"You are about to test XEEAlertView. Proceed?" cancelButtonTitle:@"No" otherButtonTitles:@"Yes", @"Maybe", nil];

[alertView handleAction:^(int buttonIndex) {
    NSLog(@"Button index pressed %d", buttonIndex);
}];

[alertView show];

```
