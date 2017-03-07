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
    
    self.navigationController.navigationBarHidden = YES;
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [UIView animateWithDuration:0.5f animations:^{
        [self setNeedsStatusBarAppearanceUpdate];
    }];
}
//
//- (void)viewDidDisappear:(BOOL)animated
//{
//    [super viewDidDisappear:animated];
//    
//    self.hideStatusBar = NO;
//}

-(BOOL)prefersStatusBarHidden
{
    return self.hideStatusBar;
}

- (IBAction)touchedMoveButton:(UIButton *)sender
{
    [self performSegueWithIdentifier:@"moveToDetailVC" sender:self];
    
    self.hideStatusBar = YES;
    
    [self viewWillAppear:nil];
    
}

-(UIStatusBarAnimation)preferredStatusBarUpdateAnimation
{
    return UIStatusBarAnimationSlide;
}


@end
