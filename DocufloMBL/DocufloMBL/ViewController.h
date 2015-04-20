//
//  ViewController.h
//  DocufloMBL
//
//  Created by Premnath on 4/20/15.
//  Copyright (c) 2015 tfqnet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController<UIScrollViewDelegate,UITextFieldDelegate,UIWebViewDelegate>
{
    UITextField *UserName;
    UITextField *PassWord;
    UIButton *signin;
    UILabel *label;
    UIWebView *webView;
    UIScrollView*scrollView;
    UIButton*loginButton;

}

@property(nonatomic,retain)UIButton*loginButton;
@property(nonatomic,retain)UIScrollView*scrollView;
@property(nonatomic,retain)UIWebView *webView;
@property(nonatomic,retain)UITextField *UserName;
@property(nonatomic,retain)UITextField *PassWord;
@property(nonatomic,retain)UIButton *signin;
@property(nonatomic,copy)UILabel *label;



@end

