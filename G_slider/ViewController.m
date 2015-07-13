//
//  ViewController.m
//  G_slider
//
//  Created by 郭梦浩 on 15/7/13.
//  Copyright (c) 2015年 郭梦浩. All rights reserved.
//

#import "ViewController.h"
#import "CustomSlider.h"
@interface ViewController () {
    
    CustomSlider *_customSlider;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _customSlider = [[CustomSlider alloc] initWithFrame:CGRectMake(0, 200, 200, 40)];
    [self.view addSubview:_customSlider];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
