//
//  ViewController.m
//  T
//
//  Created by 李政 on 2019/8/18.
//  Copyright © 2019 zm. All rights reserved.
//

#import "ViewController.h"
#import "XibView.h"
#import <Masonry/Masonry.h>
#import "ZMCategory.h"

#import "ZMRegisterViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    XibView *v = [XibView loadXibViewWithLastObject];
    v.frame = CGRectMake(0, 100, self.view.bounds.size.width, 190);
    [self.view addSubview:v];

    UIButton *btn;

    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];

}

- (void)btnAction
{

}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    ZMRegisterViewController *vc = [[ZMRegisterViewController alloc] init];

    [self.navigationController pushViewController:vc animated:YES];
}

@end
