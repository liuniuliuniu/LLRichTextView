//
//  LLPictureModel.m
//  LLRichTextView
//
//  Created by liushaohua on 2017/7/14.
//  Copyright © 2017年 liushaohua. All rights reserved.
//

#import "LLPictureModel.h"

@implementation LLPictureModel

- (instancetype)init{
    
    if (self = [super init]) {
        self.imageurl = @"";
        self.width = 220.f;
        self.height = 200.f;
    }
    
    return self;
}

@end
