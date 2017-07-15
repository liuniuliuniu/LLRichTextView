//
//  LLRichTextViewController.h
//  LLRichTextView
//
//  Created by liushaohua on 2017/7/14.
//  Copyright © 2017年 liushaohua. All rights reserved.
//

#import "ViewController.h"


@protocol LLRichTextViewControllerDelegate <NSObject>

@optional
-(void)uploadImageArray:(NSArray *)imageArr withCompletion:(NSString * (^)(NSArray * urlArray))completion;

@end

typedef NSArray *(^uploadCompelte)(void);

@interface LLRichTextViewController : ViewController


+(instancetype)shareViewController;

@property (weak, nonatomic) IBOutlet UIButton *fontBtn;
@property (weak, nonatomic) IBOutlet UIButton *colorBtn;
@property (weak, nonatomic) IBOutlet UIButton *boldBtn;
@property (weak, nonatomic) IBOutlet UIButton *imageBtn;
@property (weak, nonatomic) IBOutlet UIButton *previewBtn;

@property (weak,nonatomic) id<LLRichTextViewControllerDelegate>LLDelegate;


@end
