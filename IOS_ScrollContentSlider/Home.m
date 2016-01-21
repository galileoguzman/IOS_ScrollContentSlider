//
//  ViewController.m
//  IOS_ScrollContentSlider
//
//  Created by Galileo Guzman on 21/01/16.
//  Copyright © 2016 Galileo Guzman. All rights reserved.
//

#import "Home.h"

@interface Home ()

@property (strong, nonatomic) NSArray *arImages;
@property (strong, nonatomic) NSArray *arTitles;

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)initController{
    // Initial controller
    
    // Setup Scroll View
    self.scSlide.pagingEnabled = YES;
    self.scSlide.showsHorizontalScrollIndicator = NO;
    self.scSlide.delegate = self;
    
    // Setup data for scroll
    self.arImages = @[@"01.jpg",@"02.jpg",@"03.jpg"];
    self.arTitles = @[@"Super Girl",@"Super super",@"Yeah!!"];
    
    // Add loop for set image on scroll
    
    for (int i = 0; i < [self.arImages count]; i++) {
        VTest *page = [[VTest alloc] init];
        page.frame = CGRectMake(self.scSlide.frame.size.width*i, 0, self.scSlide.frame.size.width, self.scSlide.frame.size.height);
        page.imgPage.image = [UIImage imageNamed:self.arImages[i]];
        page.lblTitlePage.text = self.arTitles[i];
        page.lblBackgroundTitle.alpha = 0.5f;
        [self.scSlide addSubview:page];
    }
    
    self.scSlide.contentSize = CGSizeMake(self.scSlide.frame.size.width*3, self.scSlide.frame.size.height);
    
}

@end
