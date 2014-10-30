JTScrollViewController
======================

JTScrollViewController help you to create pragmatically a UIViewController with a UIScrollView which take all the space available using Auto Layout without using a nib file.

Installation
============

With [CocoaPods](http://cocoapods.org/), add this line to your Podfile.

	pod 'JTScrollViewController', '~> 0.1.0'


Usage
=====

Create a controller which inherit from JTScrollViewController.
```objective-c
#import <UIKit/UIKit.h>
#import "JTScrollVIewController.h"

@interface MyViewController : JTScrollVIewController

@end
```

Create your views in the `viewDidLoad` and call `configureConstraintsForSubviews` for create all constraints.
```objective-c
#import "MyViewController.h"

@implementation MyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Add all your views to self.contentView
    // Do your stuff...
    {
        UITextField *textField = [UITextField alloc] initWithFrame:CGRectMake(0, 0, 0, 45)];
        [self.contentView addSubview:textField];
    }
    
    {
        UITextField *textField = [UITextField alloc] initWithFrame:CGRectMake(0, 0, 0, 45)];
        [self.contentView addSubview:textField];
    }

    {
    	UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 0, 50)];
        [self.contentView addSubview:button];
    }

    // Call configureConstraintsForSubviews for create all constraints
    [self configureConstraintsForSubviews];
}
```

License
=======

JTScrollViewController is released under the MIT license. See the LICENSE file for more info.