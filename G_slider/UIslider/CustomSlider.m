//
//  CustomSlider.m
//  亲密互动
//
//  Created by 郭梦浩 on 15/5/24.
//  Copyright (c) 2015年 郭梦浩. All rights reserved.
//

#import "CustomSlider.h"
#import "LDProgressView.h"
@interface CustomSlider () {

    CGRect _currentFrame;
}
@property(nonatomic,strong)LDProgressView *progressView;

- (void)initilazeApearance;
@end
@implementation CustomSlider

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        _currentFrame = frame;
        [self initilazeApearance];
        
    }
    
    return self;
}

- (void)initilazeApearance {
    _progressView = [[LDProgressView alloc] initWithFrame:CGRectMake(0, 0, _currentFrame.size.width, _currentFrame.size.height)];
    _progressView.progress = 0.0;
    _progressView.color = [UIColor orangeColor];
    _progressView.flat = @YES;
    _progressView.showBackgroundInnerShadow = @NO;
    _progressView.animate = @YES;
    _progressView.userInteractionEnabled = YES;
    [self addSubview:_progressView];
    _slider = [[UISlider alloc] initWithFrame:CGRectMake(0, 0, _currentFrame.size.width, _currentFrame.size.height)];
    _slider.backgroundColor = [UIColor clearColor];
    _slider.minimumValue = self.minimumValue;
    _slider.maximumValue = self.maximumValue;
    _slider.value = 0;
    [_slider setMinimumTrackImage:[UIImage imageNamed:@"slider"] forState:UIControlStateNormal];
    [_slider setMaximumTrackImage:[UIImage imageNamed:@"slider"] forState:UIControlStateNormal];
    
    [self.slider addTarget:self action:@selector(PressSliderValueChange:) forControlEvents:UIControlEventValueChanged];
    
    [self addSubview:_slider];
    
    
}

- (void)PressSliderValueChange:(UISlider *)sender {
    
    self.progressView.progress = sender.value;
    
}

@end
