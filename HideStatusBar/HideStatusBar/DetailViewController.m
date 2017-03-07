//
//  DetailViewController.m
//  HideStatusBar
//
//  Created by 김민아 on 2017. 3. 6..
//  Copyright © 2017년 김민아. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()


@end

@implementation DetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
        
    // 그냥 처음부터 prefersStatusBarHidden에 YES를 리턴시켜주면 처음부터 사라져 있음
    // 뷰가 로드될 때 리턴 값을 YES로 바꿔주고 status bar의 상태를 업데이트 시켜주면
    // 애니메이션 처리와 함께 status bar가 사라짐

    self.hide = YES;
    
    [self update];

}

- (IBAction)touchedBackButton:(UIButton *)sender
{
    [self.navigationController popViewControllerAnimated:YES];

    self.hide = NO;
}


@end
