//
//  ZMBaseXibView.h
//  T
//
//  Created by 李政 on 2019/8/25.
//  Copyright © 2019 zm. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZMBaseXibView : UIView

+ (instancetype)loadXibView;
+ (instancetype)loadXibViewWithLastObject;
+ (instancetype)loadXibViewWithObjectIndex:(NSUInteger)index;

@end

NS_ASSUME_NONNULL_END
