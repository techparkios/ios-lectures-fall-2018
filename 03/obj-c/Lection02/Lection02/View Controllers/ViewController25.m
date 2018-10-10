//
//  ViewController25.m
//  Lection02
//
//  Created by d.taraev on 07.03.2018.
//  Copyright © 2018 mail.ru. All rights reserved.
//

#import "ViewController25.h"

@interface ViewController25 ()

@end

@implementation ViewController25

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"Cancel" style:UIBarButtonItemStylePlain target:self action:@selector(cancelButtonTapped:)];
    
    self.navigationItem.leftBarButtonItem = item;
}

- (void)cancelButtonTapped:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
