//
//  ViewController.m
//  JWStarView
//
//  Created by jiang on 2017/6/22.
//  Copyright © 2017年 jarvis. All rights reserved.
//

#import "ViewController.h"
#import "JWStarView.h"
@interface ViewController ()<JWStarViewViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    JWStarView*star=[[JWStarView alloc]initWithFrame:CGRectMake(20, 60, 200, 30)];
    star.rateStyle=HalfStar;
    star.delegate=self;
    [self.view addSubview:star];
    
    //只做显示作用
    JWStarView*stars=[[JWStarView alloc]initWithFrame:CGRectMake(20,100, 200, 30)];
    stars.rateStyle=HalfStar;
    stars.delegate=self;
    stars.isIndicator=YES;
    stars.currentScore=3.5;
    [self.view addSubview:stars];

    JWStarView*star1=[[JWStarView alloc]initWithFrame:CGRectMake(20, 140, 200, 30) finish:^(CGFloat currentScore) {
        NSLog(@"current-----%f",currentScore);
    }];
    [self.view addSubview:star1];
    
    JWStarView*star2=[[JWStarView alloc]initWithFrame:CGRectMake(20, 180, 200, 30) numberOfStars:5 rateStyle:HalfStar finish:^(CGFloat currentScore) {
        NSLog(@"star2----%f",currentScore);
    }];
    [self.view addSubview:star2];
    JWStarView *star3=[[JWStarView alloc]initWithFrame:CGRectMake(20, 220, 200, 30) numberOfStars:5 rateStyle:WholeStar delegate:self];
    [self.view addSubview:star3];
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)starView:(JWStarView *)starView currentScore:(CGFloat)currentScore
{
    NSLog(@"staview---------%f",currentScore);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
