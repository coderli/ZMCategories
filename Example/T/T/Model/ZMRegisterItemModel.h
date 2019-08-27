//
//  ZMRegisterItemModel.h
//  T
//
//  Created by 李政 on 2019/8/25.
//  Copyright © 2019 zm. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZMRegisterItemModel : NSObject

//"identifyKey":"name",
//"leftTitle":"姓名",
//"middleContent":"",
//"middlePlaceHolder":"请输入姓名",
//"middleCanEidt":1,
//"keyboardType":"UIKeyboardDefault",
//"type":"default",
//"must":1
@property (nonatomic,copy)  NSString *identifyKey;
@property (nonatomic,copy)  NSString *leftTitle;
@property (nonatomic,copy)  NSString *middleContent;
@property (nonatomic,copy)  NSString *middlePlaceHolder;
@property (nonatomic,assign)BOOL     middleCanEidt;
@property (nonatomic,assign)int      keyboardType;
@property (nonatomic,copy)  NSString *type;
@property (nonatomic,assign)BOOL     must;
@end

NS_ASSUME_NONNULL_END
