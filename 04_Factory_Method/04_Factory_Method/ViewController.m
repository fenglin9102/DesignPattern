//
//  ViewController.m
//  04_Factory_Method
//
//  Created by 张枫林 on 2019/12/18.
//  Copyright © 2019 张枫林. All rights reserved.
//

#import "ViewController.h"
#import "Source/BaseMediaView.h"
#import "Source/DesktopViewGenerator.h"
#import "Source/VideoViewGenerator.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
     * 将实例的生成交给子类
     */
    DesktopViewGenerator *desktopGene = [[DesktopViewGenerator alloc] init];
    BaseMediaView *desktopView = [desktopGene generate];
    
    
    VideoViewGenerator *videoGene = [[VideoViewGenerator alloc] init];
    BaseMediaView *videoView1 = [videoGene generate];
    BaseMediaView *videoView2 = [videoGene generate];
    
    NSLog(@"\n%@ \n %@ \n %@",desktopView, videoView1, videoView2);
    
    NSLog(@"%@",desktopGene.desktops);
    
    NSLog(@"%@",videoGene.videoViews);
}


@end
