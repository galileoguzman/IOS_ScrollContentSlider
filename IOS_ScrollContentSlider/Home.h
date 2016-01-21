//
//  ViewController.h
//  IOS_ScrollContentSlider
//
//  Created by Galileo Guzman on 21/01/16.
//  Copyright © 2016 Galileo Guzman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VTest.h"

@interface Home : UIViewController<UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UIScrollView *scSlide;
@property (strong, nonatomic) IBOutlet UIPageControl *pager;
- (IBAction)changePage;
@property (nonatomic) int totalPages;
@end

