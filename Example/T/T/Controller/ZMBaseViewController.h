//
//  ZMBaseViewController.h
//  T
//
//  Created by 李政 on 2019/8/25.
//  Copyright © 2019 zm. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Masonry.h>
#import <MJExtension.h>
#import "ZMRegisterItemModel.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^RefreshBlock)(void);
typedef void(^TransmitBlock)(id obj);

@interface ZMBaseViewController : UIViewController

@property (nonatomic,strong)UITableView         *table;

@property (nonatomic,assign)int                 page;
@property (nonatomic,copy)  NSArray             *dataArray;
@property (nonatomic,copy)  NSDictionary        *dataDictionary;
@property (nonatomic,strong)NSMutableArray      *mutableDataArray;
@property (nonatomic,strong)NSMutableDictionary *mutableDataDictionary;

@property (nonatomic,copy)  RefreshBlock        refreshBlock;
@property (nonatomic,copy)  TransmitBlock       transmitBlock;

@end

NS_ASSUME_NONNULL_END
