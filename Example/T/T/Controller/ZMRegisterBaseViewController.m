//
//  ZMRegisterBaseViewController.m
//  T
//
//  Created by 李政 on 2019/8/25.
//  Copyright © 2019 zm. All rights reserved.
//

#import "ZMRegisterBaseViewController.h"

#import "ZMDefaultTableViewCell.h"
#import "ZMMessageTableViewCell.h"
#import "ZMIndicatorTableViewCell.h"


@interface ZMRegisterBaseViewController ()<UITableViewDelegate,UITableViewDataSource>


@end

@implementation ZMRegisterBaseViewController

@synthesize table = _table;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self.view addSubview:self.table];

    [self.table mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsMake(0, 10, 0, 10));
    }];
}


#pragma mark UITableViewDelegate && UITableViewDataSource



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.dataArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataArray[section] count];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZMRegisterItemModel *model = self.dataArray[indexPath.section][indexPath.row];

    ZMBaseTableViewCell *cell = nil;
    if ([model.type isEqualToString:@"default"])
    {
        cell = [tableView dequeueReusableCellWithIdentifier:@"defaultCell"];
    }

    else if ([model.type isEqualToString:@"message"])
    {
        cell = [tableView dequeueReusableCellWithIdentifier:@"messageCell"];
    }
    else if ([model.type isEqualToString:@"indicator"])
    {
        cell = [tableView dequeueReusableCellWithIdentifier:@"indicatorCell"];
    }
    else
    {

    }
    cell.model = model;
    return cell;
}




- (UITableView *)table
{
    if (!_table)
    {
        _table = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _table.delegate = self;
        _table.dataSource = self;
        _table.separatorInset = UIEdgeInsetsMake(0, 12, 0, 12);
        _table.backgroundColor = [UIColor lightGrayColor];
        [_table registerNib:[UINib nibWithNibName:@"ZMDefaultTableViewCell" bundle:nil] forCellReuseIdentifier:@"defaultCell"];
        [_table registerNib:[UINib nibWithNibName:@"ZMMessageTableViewCell" bundle:nil] forCellReuseIdentifier:@"messageCell"];
        [_table registerNib:[UINib nibWithNibName:@"ZMIndicatorTableViewCell" bundle:nil] forCellReuseIdentifier:@"indicatorCell"];
        if (@available (iOS 11.0, *))
        {

        }
        else
        {

        }
    }
    return _table;
}

@end
