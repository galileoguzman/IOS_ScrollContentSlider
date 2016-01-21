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
    
    /*UIImageView *p1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.scSlide.frame.size.width, 250)];
    p1.image = [UIImage imageNamed:self.arImages[0]];
    p1.contentMode = UIViewContentModeScaleToFill;
    
    UILabel *lbl1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.scSlide.frame.size.width, 250)];
    lbl1.text = self.arTitles[0];
    
    [self.scSlide addSubview:p1];
    [self.scSlide addSubview:lbl1];
    
    UIImageView *p2 = [[UIImageView alloc] initWithFrame:CGRectMake(self.scSlide.frame.size.width, 0, self.scSlide.frame.size.width, 250)];
    p2.image = [UIImage imageNamed:self.arImages[1]];
    p2.contentMode = UIViewContentModeScaleToFill;
    
    UILabel *lbl2 = [[UILabel alloc] initWithFrame:CGRectMake(self.scSlide.frame.size.width, 0, self.scSlide.frame.size.width, 250)];
    lbl2.text = self.arTitles[1];
    
    [self.scSlide addSubview:p2];
    [self.scSlide addSubview:lbl2];
    
    UIImageView *p3 = [[UIImageView alloc] initWithFrame:CGRectMake(2*self.scSlide.frame.size.width, 0, self.scSlide.frame.size.width, 250)];
    p3.image = [UIImage imageNamed:self.arImages[2]];
    p3.contentMode = UIViewContentModeScaleToFill;
    
    UILabel *lbl3 = [[UILabel alloc] initWithFrame:CGRectMake(2*self.scSlide.frame.size.width, 0, self.scSlide.frame.size.width, 250)];
    lbl3.text = self.arTitles[2];
    
    [self.scSlide addSubview:p3];
    [self.scSlide addSubview:lbl3];*/
    
    /*VTest *p1 = [[[NSBundle mainBundle] loadNibNamed:@"VTest" owner:self options:nil] objectAtIndex:0];
    p1.frame = CGRectMake(self.scSlide.frame.size.width*0, 0, self.scSlide.frame.size.width, 250);
    p1.imgPage.image = [UIImage imageNamed:self.arImages[0]];
    p1.lblTitlePage.text = self.arTitles[0];
    [self.scSlide addSubview:p1];
    
    VTest *p2 = [[[NSBundle mainBundle] loadNibNamed:@"VTest" owner:self options:nil] objectAtIndex:0];
    p1.frame = CGRectMake(self.scSlide.frame.size.width*1, 0, self.scSlide.frame.size.width, 250);
    p2.imgPage.image = [UIImage imageNamed:self.arImages[1]];
    p2.lblTitlePage.text = self.arTitles[1];
    [self.scSlide addSubview:p2];
    
    VTest *p3 = [[[NSBundle mainBundle] loadNibNamed:@"VTest" owner:self options:nil] objectAtIndex:0];
    p3.frame = CGRectMake(self.scSlide.frame.size.width*2, 0, self.scSlide.frame.size.width, 250);
    p3.imgPage.image = [UIImage imageNamed:self.arImages[2]];
    p3.lblTitlePage.text = self.arTitles[2];
    [self.scSlide addSubview:p3];*/
    
    for (int i = 0; i < [self.arImages count]; i++) {
        VTest *page = [[[NSBundle mainBundle] loadNibNamed:@"VTest" owner:self options:nil] objectAtIndex:0];
        page.frame = CGRectMake(self.scSlide.frame.size.width*i, 0, self.scSlide.frame.size.width, self.scSlide.frame.size.height);
        page.imgPage.image = [UIImage imageNamed:self.arImages[i]];
        page.lblTitlePage.text = self.arTitles[i];
        [self.scSlide addSubview:page];
    }
    
    self.scSlide.contentSize = CGSizeMake(self.scSlide.frame.size.width*3, self.scSlide.frame.size.height);
    
}

@end
