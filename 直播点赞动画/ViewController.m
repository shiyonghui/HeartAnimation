//
//  ViewController.m
//  直播点赞动画
//
//  Created by 施永辉 on 16/6/30.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import "SYHHeartFlyView.h"
@interface ViewController ()
@property (nonatomic, assign)CGFloat heartSize;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _heartSize = 36;
}
- (IBAction)PlayHeartFlyAnimation:(id)sender {
    SYHHeartFlyView * heart = [[SYHHeartFlyView alloc]initWithFrame:CGRectMake(0, 0, _heartSize, _heartSize)];
    [self.view addSubview:heart];
    CGPoint fountainSource = CGPointMake(20 + _heartSize/2.0, self.view.bounds.size.height - _heartSize/2.0 - 10);
    heart.center = fountainSource;
    [heart animateInView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
