//
//  ViewController.m
//  ZFPlayerDemo_VideoPlayer
//
//  Created by 杨洁茂 on 2017/9/13.
//  Copyright © 2017年 杨洁茂. All rights reserved.
//

#import "ViewController.h"
#import <ZFPlayer/ZFPlayer.h>
@interface ViewController ()

@property (nonatomic, strong) ZFPlayerView *playerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.playerView];
    
    [self.playerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(20);
        make.height.equalTo(self.playerView.mas_width).multipliedBy(9.0f/16.0f);
    }];
    
    ZFPlayerControlView *controlView = [[ZFPlayerControlView alloc]init];
    ZFPlayerModel *playerModel = [[ZFPlayerModel alloc]init];
    playerModel.fatherView = self.view;
    playerModel.videoURL = [NSURL URLWithString:@"http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4"];
    playerModel.title = @"阿斯达是哒是哒";
    [self.playerView playerControlView:controlView playerModel:playerModel];
    
    [self.playerView autoPlayTheVideo];
    self.playerView.hasDownload = YES;
    [self.playerView autoPlayTheVideo];
    
}

- (ZFPlayerView *)playerView{
    if (_playerView == nil) {
        _playerView = [[ZFPlayerView alloc]init];
    }
    return _playerView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (IBAction)playBtnClick:(UIButton *)sender {
    
    
}
@end
