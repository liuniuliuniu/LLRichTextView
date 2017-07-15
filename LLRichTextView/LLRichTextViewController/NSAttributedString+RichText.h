//
//  NSAttributedString+RichText.h
//  LLRichTextView
//
//  Created by liushaohua on 2017/7/14.
//  Copyright © 2017年 liushaohua. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSAttributedString (RichText)
/**
 *  获取带有图片标示的一个普通字符串
 *
 *  @return NSString
 */
- (NSString *)getPlainString;

//返回一个图片数组
-(NSArray *)getImgaeArray;

//返回数组，每个数组是一种属性和对应的内容
-(NSMutableArray *)getArrayWithAttributed;

//获取颜色值
- (NSString *)getHexStringByColor:(UIColor *)originColor;

//获取有 rgb，alpha的字典
- (NSDictionary *)getRGBDictionaryByColor:(UIColor *)originColor;


@end
