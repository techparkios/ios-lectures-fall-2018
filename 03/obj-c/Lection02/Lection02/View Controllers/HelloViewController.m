//
//  HelloViewController.m
//  Lection02
//
//  Created by d.taraev on 16.03.17.
//  Copyright © 2017 mail.ru. All rights reserved.
//

#import "HelloViewController.h"

@interface HelloViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation HelloViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.label.text = self.name ? [NSString stringWithFormat:@"Скоро концерт, %@, пойдем", self.name] : nil;
}

@end
