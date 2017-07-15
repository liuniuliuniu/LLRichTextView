//
//  ViewController.m
//  LLRichTextView
//
//  Created by liushaohua on 2017/7/14.
//  Copyright © 2017年 liushaohua. All rights reserved.
//

#import "ViewController.h"

#import "LLRichTextViewController.h"
#import "LLPictureModel.h"

@interface ViewController ()<LLRichTextViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    
}
- (IBAction)pushVC:(id)sender {
    
    LLRichTextViewController * ctrl=[LLRichTextViewController shareViewController];
    ctrl.LLDelegate=self;    
    [self.navigationController pushViewController:ctrl animated:YES];

}



#pragma mark RichTextViewControllerDelegate
-(void)uploadImageArray:(NSArray *)imageArr withCompletion:(NSString * (^)(NSArray * urlArray))completion;
{
    
    NSMutableArray * urlArr=[NSMutableArray array];
    //模拟图片上传，返回每个图片的地址和大小
    for (int i=0; i<imageArr.count; i++) {
        LLPictureModel * model=[[LLPictureModel alloc]init];
        model.imageurl=@"http://n1.itc.cn/img8/wb/recom/2016/08/26/147221058365783029.JPEG";
        [urlArr addObject:model];
    }
        
    //获取到网页  正常的做法就是后台返回数据进行WebView加载展示
    NSString * htmlStr=completion(urlArr);
    
    NSLog(@"htmlStr--%@",htmlStr);
    
    [self.webView loadHTMLString:htmlStr baseURL:nil];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
