//
//  UIImageView+FMLoad.h
//  XiongKe
//
//  Created by lsk on 2019/12/18.
//  Copyright © 2020 重庆博千亿网络科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <YYKit/YYKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (FMLoad)

- (void)XK_setImageWithURL:(NSString *)imageURL;
- (void)XK_setImageWithURL:(NSString *)imageURL
               placeholder:(UIImage *)placeholder;
- (void)XK_setImageWithURL:(NSString *)imageURL
               placeholder:(UIImage *)placeholder
                completion:(nullable YYWebImageCompletionBlock)completion;


/**
 给角色为主播的头像添加标示
 
 @param anchorSize 标示图宽高
 */
- (void)setAnchorViewWithAnchorSize:(CGSize)anchorSize;


// 删除v标识图
- (void)removeAnchorImageView;

@end

NS_ASSUME_NONNULL_END
