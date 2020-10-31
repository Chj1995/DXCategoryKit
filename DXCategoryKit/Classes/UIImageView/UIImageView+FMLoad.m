//
//  UIImageView+FMLoad.m
//  XiongKe
//
//  Created by lsk on 2019/12/18.
//  Copyright © 2020 重庆博千亿网络科技有限公司. All rights reserved.
//

#import "UIImageView+FMLoad.h"
#import "UIImageView+YYWebImage.h"
#import <Masonry/Masonry.h>
//#import <DXConstantsKit/ConstantsKitHeader.h>

@interface UIImageView()
@property (nonatomic, strong) UIImageView *anchorTagImgView;
@end

@implementation UIImageView (FMLoad)

- (void)XK_setImageWithURL:(NSString *)imageURL {
    [self XK_setImageWithURL:imageURL placeholder:nil completion:nil];
}
- (void)XK_setImageWithURL:(NSString *)imageURL placeholder:(UIImage *)placeholder {
    [self XK_setImageWithURL:imageURL placeholder:placeholder completion:nil];
}
- (void)XK_setImageWithURL:(NSString *)imageURL
               placeholder:(UIImage *)placeholder
                completion:(nullable YYWebImageCompletionBlock)completion{
//    NSString *string = [KAPPConfig.configModel.photoUrlPrefix jointUrl:imageURL];
//    [self sd_setImageWithURL:[NSURL URLWithString:string] placeholderImage:placeholder];
}

/**
 给角色为主播的头像添加标示
 
 @param anchorSize 标示图宽高
 */
- (void)setAnchorViewWithAnchorSize:(CGSize)anchorSize
{
    [self.superview addSubview:self.anchorTagImgView];
    
    [self.anchorTagImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_offset(anchorSize);
        make.left.equalTo(self.mas_right).offset(-anchorSize.width);
        make.top.equalTo(self.mas_bottom).offset(-anchorSize.height);
    }];
}

// 删除v标识图
- (void)removeAnchorImageView {
    [self.anchorTagImgView removeFromSuperview];
}

#pragma mark - getter / setter
- (UIImageView *)anchorTagImgView {
    UIImageView *imgView = objc_getAssociatedObject(self, _cmd);
    if (!imgView) {
        imgView = [[UIImageView alloc]init];
        [imgView setImage:[UIImage imageNamed:@"search_like_head"]];
        objc_setAssociatedObject(self, _cmd, imgView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return imgView;
}

@end
