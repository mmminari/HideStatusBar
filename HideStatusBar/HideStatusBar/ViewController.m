//
//  ViewController.m
//  HideStatusBar
//
//  Created by 김민아 on 2017. 3. 6..
//  Copyright © 2017년 김민아. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self updateStatusBarHide:NO];
    
}

- (IBAction)touchedMoveButton:(UIButton *)sender
{
    [self performSegueWithIdentifier:@"moveToDetailVC" sender:self];
    
    [self updateStatusBarHide:YES];
}


@end
