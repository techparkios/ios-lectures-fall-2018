//
//  ViewController.m
//  Lect5
//
//  Created by d.taraev on 18.10.2017.
//  Copyright © 2017 mail.ru. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) UIView *subView;
@property (strong, nonatomic) NSLayoutConstraint *subViewHeightConstraint;
@property (nonatomic) BOOL needsAnimation;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initUI];
    self.needsAnimation = YES;
    UILongPressGestureRecognizer *gestureRecognizer = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressed:)];
    [self.subView addGestureRecognizer:gestureRecognizer];
}

- (void)longPressed:(UIGestureRecognizer *)gestureRecognizer {
    NSLog(@"longPressed: %@", gestureRecognizer.view);
    
    if (self.needsAnimation) {
        [UIView animateWithDuration:2.5 animations:^{
            self.subViewHeightConstraint.constant = 0.0;
            [self.subView setNeedsLayout];
            [self.subView layoutIfNeeded];
        } completion:^(BOOL finished) {
            self.needsAnimation = NO;
        }];
    }
}

- (void)initUI {
    
    self.subView = [[UIView alloc] init];
    self.subView.translatesAutoresizingMaskIntoConstraints = NO;
    self.subView.backgroundColor = UIColor.grayColor;
    
    [self.view addSubview:self.subView];
    
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"|-[subView]-|"
                                                                   options:0
                                                                   metrics:nil
                                                                     views:@{@"subView": self.subView}];
    [self.view addConstraints:constraints];
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self.subView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.topLayoutGuide attribute:NSLayoutAttributeTop multiplier:1.0 constant:100.0];
    
    [self.view addConstraint:constraint];
    
    self.subViewHeightConstraint = [NSLayoutConstraint constraintWithItem:self.subView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:75.0];
    [self.subView addConstraint:self.subViewHeightConstraint];
}


@end
