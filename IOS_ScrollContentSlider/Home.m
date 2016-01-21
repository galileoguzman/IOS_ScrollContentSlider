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
        [page.lblBackgroundTitle setOpaque:YES];
        [self.scSlide addSubview:page];
    }
    
    self.scSlide.contentSize = CGSizeMake(self.scSlide.frame.size.width*3, self.scSlide.frame.size.height);
    
    // pager
    [self.pager setNumberOfPages:[self.arTitles count]];
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    // Calculating the page index. Not hard to understand it.
    int page = floor(scrollView.contentOffset.x / [UIScreen mainScreen].bounds.size.width);
    
    // Set the page index as the current page to the page control.
    [self.pager setCurrentPage:page];
}

- (IBAction)changePage {
    // Get the index of the page.
    int pageIndex = (int)[self.pager currentPage];
    
    // We need to move the scroll to the correct page.
    // Get the scroll's frame.
    CGRect newFrame = [self.scSlide frame];
    
    // Calculate the x-coordinate of the frame where the scroll should go to.
    newFrame.origin.x = newFrame.size.width * pageIndex;
    
    // Scroll the frame we specified above.
    [self.scSlide scrollRectToVisible:newFrame animated:YES];
}

@end
