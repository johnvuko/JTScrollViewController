JTScrollViewController
======================

![Version](https://img.shields.io/cocoapods/v/JTScrollViewController.svg)
![License](https://img.shields.io/cocoapods/l/JTScrollViewController.svg)
![Platform](https://img.shields.io/cocoapods/p/JTScrollViewController.svg)

JTScrollViewController help you to create pragmatically a UIViewController with a UIScrollView which take all the space available using Auto Layout without using a nib file.
It creates all constraints required for your views.

## Installation

With [CocoaPods](http://cocoapods.org/), add this line to your Podfile.

	pod 'JTScrollViewController', '~> 1.0'


## Usage

Create a controller which inherit from JTScrollViewController.
```objective-c
#import <UIKit/UIKit.h>
#import <JTScrollVIewController.h>

@interface MyViewController : JTScrollVIewController

@end
```

Create your views in the `viewDidLoad` and call `configureConstraintsForSubviews` for create all constraints.
You can call `addVerticalSpacingForStatusBar` when you don't want the scrollView go under the status bar.
```objective-c
#import "MyViewController.h"

@implementation MyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Add all your views to self.contentView
    // Do your stuff...
    {
        CGFloat spaceFromTop = 30.;
        UITextField *textField = [UITextField alloc] initWithFrame:CGRectMake(0, spaceFromTop, 0, 45)];
        [self.contentView addSubview:textField];
    }
    
    {
        UITextField *textField = [UITextField alloc] initWithFrame:CGRectMake(0, 5, 0, 45)];
        [self.contentView addSubview:textField];
    }

    {
    	UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 10, 0, 50)];
        [self.contentView addSubview:button];
    }

    // Add vertical space (22px) for the status bar
    // Use this when you don't have a navigation bar and you don't want the scroll go under the status bar
    [self addVerticalSpacingForStatusBar:YES];

    // Call configureConstraintsForSubviews for create all constraints
    [self configureConstraintsForSubviews];
}
```

## Requirements

- iOS 7 or higher
- Automatic Reference Counting (ARC)

## Author

- [Jonathan Tribouharet](https://github.com/jonathantribouharet) ([@johntribouharet](https://twitter.com/johntribouharet))

## License

JTScrollViewController is released under the MIT license. See the LICENSE file for more info.
