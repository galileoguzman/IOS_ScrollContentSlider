//
//  ViewController.m
//  IOS_ScrollContentSlider
//
//  Created by Galileo Guzman on 21/01/16.
//  Copyright © 2016 Galileo Guzman. All rights reserved.
//

#import "Home.h"

@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)initController{
    // Initial controller
    
    self.scSlide.pagingEnabled = YES;
    self.scSlide.showsHorizontalScrollIndicator = NO;
    self.scSlide.delegate = self;
}

@end
