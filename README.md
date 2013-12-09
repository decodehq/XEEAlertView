<a href="https://xeetech.com">![Alt text](/images/xee_01.png)</a> 


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


Contact
================

Follow XEETech on Twitter (<a href="https://twitter.com/XEE_Tech">XEE Tech</a>).

Connect with us on LinkedIn (<a href="http://www.linkedin.com/company/xee-tech">@XEE_Tech</a>).


License
================
XEEPluralizer is available under the MIT license. See the LICENSE file for more info.
