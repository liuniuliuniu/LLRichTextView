//
//  NSAttributedString+html.m
//  LLRichTextView
//
//  Created by liushaohua on 2017/7/14.
//  Copyright © 2017年 liushaohua. All rights reserved.
//

#import "NSAttributedString+html.h"

@implementation NSAttributedString (html)

-(NSString *)toHtmlString
{
    NSDictionary * exportParams=@{NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType};
    NSData * htmlData=[self dataFromRange:NSMakeRange(0, self.length) documentAttributes:exportParams error:nil];
    NSString * html=[[NSString alloc]initWithData:htmlData encoding:NSUTF8StringEncoding];
    
    return html;
}

+(NSAttributedString *)toAttributedString:(NSString *)html
{
    NSData * htmlData=[html dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary * importParams=@{NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType};
    NSError * error=nil;
    NSAttributedString * htmlString=[[NSAttributedString alloc]initWithData:htmlData options:importParams documentAttributes:NULL error:&error];
    
    return htmlString;
}

@end
