//
//  ViewController.m
//  BlurEffectDemo-Objective-C
//
//  Created by 贺文杰 on 2019/7/15.
//  Copyright © 2019 贺文杰. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *baseView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setNeedsLayout];
    [self.view layoutIfNeeded];
    
    UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    
    /// 承载模糊效果的视图
    UIVisualEffectView *visualEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    visualEffectView.frame = self.baseView.frame;
    
    /// UIVibrancyEffect作用是放大和调整UIVisualEffectView内容视图的内容的颜色
    UIVisualEffectView *vibrancyView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    vibrancyView.frame = self.baseView.frame;
    
    [visualEffectView.contentView addSubview:vibrancyView];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.baseView.frame.size.width - 40, 200)];
    label.text = @"HelveticaNeue-Bold";
    label.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:30];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    [vibrancyView.contentView addSubview:label];
    
    [self.view addSubview:visualEffectView];
}


@end
