//
//  JPSViewController.m
//  DoneBarButtonItemBug
//
//  Created by JP Simard on 11/25/2013.
//  Copyright (c) 2013 JP Simard. All rights reserved.
//

#import "JPSViewController.h"

@implementation JPSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:nil action:nil];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    double delayInSeconds = 2.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        [[[UIAlertView alloc] initWithTitle:@"Save button weight changed" message:nil delegate:nil cancelButtonTitle:@"You're right! It did!" otherButtonTitles:nil] show];
    });
}

@end
