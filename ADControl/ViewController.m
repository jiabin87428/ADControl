//
//  ViewController.m
//  ADControl
//
//  Created by 李家斌 on 2017/9/19.
//  Copyright © 2017年 lijiabin. All rights reserved.
//

#import "ViewController.h"
#import "UIControl+ADControl.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *singleClickButton;
@property (weak, nonatomic) IBOutlet UIButton *multipleTriggerButton;

@property (nonatomic) int num;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addButtonEvent];
}

- (void)addButtonEvent{
    [self.singleClickButton addAction:^{
        NSLog(@"单击");
    } forControlEvents:UIControlEventTouchUpInside];
    
    __weak __typeof(self) weakSelf = self;
    [self.multipleTriggerButton addIntervalAction:0.3 withAction:^{
        weakSelf.num++;
        NSLog(@"%d",weakSelf.num);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
