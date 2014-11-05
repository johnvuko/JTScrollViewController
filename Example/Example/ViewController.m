//
//  ViewController.m
//  Example
//
//  Created by Jonathan Tribouharet.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    for(int i = 0; i < 4; ++i){
        CGFloat spaceFromTop = 10.;
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, spaceFromTop, 0, 250)];
        label.numberOfLines = 0;
        label.text = [self loremipsum];
        
        [self.contentView addSubview:label];
        
        UIView *separator = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 1)];
        separator.backgroundColor = [UIColor grayColor];
        
        [self.contentView addSubview:separator];
    }

    [self addVerticalSpacingForStatusBar:YES];
    
    [self configureConstraintsForSubviews];
}

- (NSString *)loremipsum
{
    return @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
}

@end
