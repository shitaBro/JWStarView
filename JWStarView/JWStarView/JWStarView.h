//
//  JWStarView.h
//  JWStarView
//
//  Created by jiang on 2017/6/22.
//  Copyright © 2017年 jarvis. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JWStarView;
typedef void(^finishBlock)(CGFloat currentScore);

typedef NS_ENUM(NSInteger, RateStyle)
{
    WholeStar = 0, //只能整星评论
    HalfStar = 1,  //允许半星评论
};

@protocol JWStarViewViewDelegate <NSObject>

-(void)starView:(JWStarView *)starView currentScore:(CGFloat)currentScore;

@end

@interface JWStarView : UIView
@property(nonatomic,assign)BOOL isIndicator;
@property (nonatomic,assign)RateStyle rateStyle;    //评分样式    默认是WholeStar
@property (nonatomic,assign)CGFloat currentScore;   // 当前评分：0-5  默认0
@property (nonatomic, weak) id<JWStarViewViewDelegate>delegate;
-(instancetype)initWithFrame:(CGRect)frame;
-(instancetype)initWithFrame:(CGRect)frame numberOfStars:(NSInteger)numberOfStars rateStyle:(RateStyle)rateStyle delegate:(id)delegate;
-(instancetype)initWithFrame:(CGRect)frame finish:(finishBlock)finish;
-(instancetype)initWithFrame:(CGRect)frame numberOfStars:(NSInteger)numberOfStars rateStyle:(RateStyle)rateStyle finish:(finishBlock)finish;
@end
