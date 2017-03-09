//
//  ParentViewController.m
//  HideStatusBar
//
//  Created by 김민아 on 2017. 3. 7..
//  Copyright © 2017년 김민아. All rights reserved.
//

#import "ParentViewController.h"


@interface ParentViewController ()

@end

@implementation ParentViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = YES;
}

-(BOOL)prefersStatusBarHidden
{
    return self.hide;
}

-(UIStatusBarAnimation)preferredStatusBarUpdateAnimation
{
    return UIStatusBarAnimationSlide;
}

- (void)setHide:(BOOL)hide
{
    _hide = hide;;
    
    [self update];
}

- (void)update
{
    [UIView animateWithDuration:0.5f animations:^{
        [self setNeedsStatusBarAppearanceUpdate];
    }];
}

@end
