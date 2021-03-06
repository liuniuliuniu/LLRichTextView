//
//  NSAttributedString+html.h
//  LLRichTextView
//
//  Created by liushaohua on 2017/7/14.
//  Copyright © 2017年 liushaohua. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSAttributedString (html)
/**
 *  textview的内容转化为html格式的字符串
 *
 *  @return 普通字符串 html
 */
-(NSString *)toHtmlString;
/**
 *  html转化为属性字符串，可直接显示在textview
 *
 *  @param html 内容，网页
 *
 *  @return 属性字符串
 */
+(NSAttributedString *)toAttributedString:(NSString *)html;


@end
