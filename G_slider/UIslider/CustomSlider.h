//
//  CustomSlider.h
//  亲密互动
//
//  Created by 郭梦浩 on 15/5/24.
//  Copyright (c) 2015年 郭梦浩. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomSlider : UIView
@property (nonatomic,assign)float DefaultValue;
@property (nonatomic,assign)float minimumValue;
@property (nonatomic,assign)float maximumValue;
@property (nonatomic,strong)UISlider *slider;

@end
