//
//  ZMRegisterDataViewController.m
//  T
//
//  Created by 李政 on 2019/8/25.
//  Copyright © 2019 zm. All rights reserved.
//

#import "ZMRegisterDataViewController.h"

@interface ZMRegisterDataViewController ()<UITableViewDelegate>

@end

@implementation ZMRegisterDataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)loadDataWithFileName:(NSString *)fileName
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"txt"];

    NSData *data = [NSData dataWithContentsOfFile:filePath];


    if (!data)
    {
        NSLog(@"读取配置文件数据出错");
        return;
    }
    NSError *error = nil;
    NSArray *arr = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];

    if (error)
    {
        NSLog(@"数据文件解析出错---->%@",error.description);
        return;
    }

    self.dataArray = [ZMRegisterItemModel mj_objectArrayWithKeyValuesArray:arr];
}



#pragma mark  UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
@end
