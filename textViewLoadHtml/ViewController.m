//
//  ViewController.m
//  textViewLoadHtml
//
//  Created by 李一贤 on 2019/3/27.
//  Copyright © 2019 李一贤. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *BundlePath = [[NSBundle mainBundle] pathForResource:@"注册协议.html" ofType:nil];
//    NSString *tmp = [BundlePath stringByAppendingFormat:@"/注册协议.html"];
    NSString* content = [NSString stringWithContentsOfFile:BundlePath encoding:NSUTF8StringEncoding error:nil];
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithData:[content dataUsingEncoding:NSUnicodeStringEncoding] options:@{ NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType } documentAttributes:nil error:nil];
    self.textview.attributedText = attributedString;
    
}


@end
