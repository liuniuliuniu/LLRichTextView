//
//  ImageTextAttachment.h
//  LLRichTextView
//
//  Created by liushaohua on 2017/7/14.
//  Copyright © 2017年 liushaohua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageTextAttachment : NSTextAttachment

@property(strong, nonatomic) NSString *imageTag;

@property(assign, nonatomic) CGSize imageSize;

- (UIImage *)scaleImage:(UIImage *)image withSize:(CGSize)size;

@end
