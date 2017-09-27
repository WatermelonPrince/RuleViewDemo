//
//  ViewController.m
//  RuleViewDemo
//
//  Created by 张豪豪 on 16/11/10.
//  Copyright © 2016年 zhh. All rights reserved.
//

#import "ViewController.h"
#import "HHRuleView.h"

@interface ViewController ()<HHRuleViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    HHRuleView *ruleView = [HHRuleView ruleViewWithMaxValue:1000000 minValue:100 scale:10000 frame:CGRectMake(0, 200, 375, 195)];
    ruleView.delegate = self;
    ruleView.incomeRate = 0.0013;
    ruleView.isRound = YES;
    [self.view addSubview:ruleView];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)ruleViewDidScroll:(HHRuleView *)ruleView pointValue:(CGFloat)value {
//    NSLog(@"---%f", value);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
