# JWStarView
> 一款支持整星半星评论的demo
<img src="https://github.com/JarvisHot/JWStarView/blob/master/JWStarView/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7%202017-06-22%2014.27.17.png" width="320" height="550">
> XIB 支持

###设置好宽高约束就能正常使用，宽是高x✨的数量
<img src="https://github.com/JarvisHot/JWStarView/blob/master/JWStarView/hehe.png">


## 使用说明

```
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
