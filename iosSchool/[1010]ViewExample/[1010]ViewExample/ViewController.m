//
//  ViewController.m
//  [1010]ViewExample
//
//  Created by celeste on 2016. 10. 10..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) UILabel *displayLb;
@property (nonatomic, weak) UIButton *beforeBtn;
@property (nonatomic, weak) UIView *itemContainerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // myView
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 320, 140)];
    [myView setBackgroundColor:[UIColor redColor]];
    [myView setAlpha:0.5];
    [self.view addSubview:myView];
    
    // myLabel
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 100, 35)];
    [myLabel setText:@"첫번째 레이블"];
    [myLabel setBackgroundColor:[UIColor blackColor]];
    [myLabel setTextColor:[UIColor redColor]];
    [myLabel setTextAlignment:NSTextAlignmentCenter];
    [myView addSubview:myLabel];
    
    // okBtn Sample
    UIButton *okBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    okBtn.frame = CGRectMake(30, 50, 350, 35);
    [okBtn setTitle:@"OK(Normal)" forState:UIControlStateNormal];
    [okBtn setTitle:@"touchDown(Highlighted)" forState:UIControlStateHighlighted];
    [okBtn setTitle:@"selected" forState:UIControlStateSelected];
    [okBtn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [okBtn setTitleColor:[UIColor purpleColor] forState:UIControlStateHighlighted];
    okBtn.titleLabel.font = [UIFont systemFontOfSize:30];
    [okBtn addTarget:self action:@selector(touchUpInsideOkBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:okBtn];
    
    
    // okBtn 1~4
//    UIButton *okBtn1 = [UIButton buttonWithType:UIButtonTypeCustom];
//    UIButton *okBtn2 = [UIButton buttonWithType:UIButtonTypeCustom];
//    UIButton *okBtn3 = [UIButton buttonWithType:UIButtonTypeCustom];
//    UIButton *okBtn4 = [UIButton buttonWithType:UIButtonTypeCustom];
//    
//    okBtn1.frame = CGRectMake(50, 300, 100, 35);
//    okBtn2.frame = CGRectMake(180, 300, 100, 35);
//    okBtn3.frame = CGRectMake(50, 350, 100, 35);
//    okBtn4.frame = CGRectMake(180, 350, 100, 35);
//
//    [okBtn1 setTitle:@"1번 버튼" forState:UIControlStateNormal];
//    [okBtn2 setTitle:@"2번 버튼" forState:UIControlStateNormal];
//    [okBtn3 setTitle:@"3번 버튼" forState:UIControlStateNormal];
//    [okBtn4 setTitle:@"4번 버튼" forState:UIControlStateNormal];
//    
//    [okBtn1 setBackgroundColor:[UIColor blackColor]];
//    [okBtn2 setBackgroundColor:[UIColor blackColor]];
//    [okBtn3 setBackgroundColor:[UIColor blackColor]];
//    [okBtn4 setBackgroundColor:[UIColor blackColor]];
//    
//    UILabel *displayLb = [[UILabel alloc] initWithFrame:CGRectMake(115, 400, 100, 35)];
//    displayLb.text = @"0";
//    [displayLb setBackgroundColor:[UIColor grayColor]];
//    displayLb.font = [UIFont systemFontOfSize:20];
//    displayLb.textAlignment = NSTextAlignmentRight;
//    self.displayLb = displayLb;
//    
//    [okBtn1 addTarget:self action:@selector(clickOkBtn:) forControlEvents:UIControlEventTouchUpInside];
//    [okBtn2 addTarget:self action:@selector(clickOkBtn:) forControlEvents:UIControlEventTouchUpInside];
//    [okBtn3 addTarget:self action:@selector(clickOkBtn:) forControlEvents:UIControlEventTouchUpInside];
//    [okBtn4 addTarget:self action:@selector(clickOkBtn:) forControlEvents:UIControlEventTouchUpInside];
    
//    [self.view addSubview:okBtn1];
//    [self.view addSubview:okBtn2];
//    [self.view addSubview:okBtn3];
//    [self.view addSubview:okBtn4];
//    [self.view addSubview:displayLb];
    
    
    NSMutableArray *item = [[NSMutableArray alloc] init];
    
    for (NSInteger i=0; i<4; i++) {
        UIButton *btn = [[UIButton alloc] init];
        btn.tag = i;
        
        [btn setBackgroundColor:[UIColor blackColor]];
        [btn setTitle:@"selected" forState:UIControlStateSelected];
        [btn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor purpleColor] forState:UIControlStateHighlighted];
        [item addObject:btn];
        [self.view addSubview:btn];
        
    }

    CGFloat baseViewOffsetY = 45;
    
    //드링크 뷰 하나의 높이는 200정도 잡느다.
    self.itemContainerView.frame = CGRectMake(20, 250, self.view.frame.size.width - 40, 400+10);
    baseViewOffsetY += self.itemContainerView.frame.size.height + 30;

    const NSInteger baseViewBet = 10;
    for (UIView *itemView in item) {
        NSInteger row = itemView.tag/2;
        NSInteger cal = itemView.tag%2;
        CGFloat itemViewWidth = (self.itemContainerView.frame.size.width - 10)/2;
        CGFloat itemViewHeight = (self.itemContainerView.frame.size.height - 10)/2;
        itemView.frame = CGRectMake((itemViewWidth + baseViewBet)*cal,(itemViewHeight + baseViewBet)*row, itemViewWidth,itemViewHeight);
    }

    
    
}

- (void)clickOkBtn:(UIButton *)sender {

    self.beforeBtn.selected = NO;
    if (sender.selected) {
        sender.selected = NO;
        self.beforeBtn = nil;
        self.displayLb.text = @"버튼 클릭 전 입니다";
    } else {
        self.beforeBtn.selected = NO;
        NSString *text = sender.titleLabel.text;
        self.displayLb.text = text;
        sender.selected = YES;
        self.beforeBtn = sender;
    }
    
    //    if (sender.selected ) {
    //
    //        sender.selected = YES;
    //        NSLog(@"TEST");
    //        self.labelValue.text = [NSString stringWithFormat:@"TEST"];
    //    }
    
    
    //    if ([sender.titleLabel.text isEqualToString:@"1번 버튼"]) {
    //        self.labelValue.text = [NSString stringWithFormat:@"%@",sender.titleLabel.text];
    //    } else if ([sender.titleLabel.text isEqualToString:@"2번 버튼"]) {
    //        self.labelValue.text = [NSString stringWithFormat:@"%@",sender.titleLabel.text];
    //    } else if ([sender.titleLabel.text isEqualToString:@"3번 버튼"]) {
    //        self.labelValue.text = [NSString stringWithFormat:@"%@",sender.titleLabel.text];
    //    } else if ([sender.titleLabel.text isEqualToString:@"4번 버튼"]) {
    //        self.labelValue.text = [NSString stringWithFormat:@"%@",sender.titleLabel.text];
    //    }
}



- (void)touchUpInsideOkBtn:(UIButton *)sender {
    
    NSInteger tagValue = sender.tag;
    if (sender.selected) {
        sender.selected = NO;
    } else {
        sender.selected = YES;
    }
    NSLog(@"버틀 클릭 완료");
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
