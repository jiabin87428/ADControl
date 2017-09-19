//
//  UIControl+ADControl.h
//  chehaoyunV2.0
//
//  Created by 李家斌 on 2017/9/18.
//  Copyright © 2017年 李家斌. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^Action)();

@interface UIControl (ADControl)

//单击
- (void)addAction:(Action)action forControlEvents:(UIControlEvents)UIControlEvents;

//按住按钮的时候根据设置的间隔秒，不断触发点击事件
- (void)addIntervalAction:(double)seconds withAction:(Action)action;

@end
