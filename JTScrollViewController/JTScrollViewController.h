#import <UIKit/UIKit.h>

@interface JTScrollViewController : UIViewController

@property (nonatomic, strong, readonly) UIScrollView *scrollView;
@property (nonatomic, strong, readonly) UIView *contentView;

- (void)configureConstraintsForSubviews;

@end
