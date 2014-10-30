#import "JTScrollViewController.h"

#import <Masonry.h>

@implementation JTScrollViewController

- (void)loadView
{
    UIView *view = [UIView new];
    
    view.backgroundColor = [UIColor whiteColor];
    
    _scrollView = [UIScrollView new];
    [view addSubview:_scrollView];
    
    _contentView = [UIView new];
    [_scrollView addSubview:_contentView];
    
    [_scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
       make.edges.equalTo(view);
    }];
    
    [_contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(_scrollView);
        make.width.equalTo(view.mas_width);
    }];
        
    self.view = view;
}

- (void)configureConstraintsForSubviews
{
    if(self.contentView.subviews.count == 0){
        return;
    }
    
    for(UIView *view in self.contentView.subviews){
        [view mas_updateConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(view.superview.mas_left);
            make.right.equalTo(view.superview.mas_right);
            make.height.equalTo([NSNumber numberWithFloat:CGRectGetHeight(view.frame)]);
        }];
    }
    
    {
        UIView *view = self.contentView.subviews.firstObject;
        
        [view mas_updateConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(view.superview.mas_top);
        }];
    }
    
    {
        UIView *view = self.contentView.subviews.lastObject;
        
        [view mas_updateConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(view.superview.mas_bottom);
        }];
    }
    
    for(int i = 0; i < self.contentView.subviews.count - 1; ++i){
        UIView *view = self.contentView.subviews[i];
        UIView *viewNext = self.contentView.subviews[i + 1];
        
        [viewNext mas_updateConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(view.mas_bottom);
        }];
    }
}

@end