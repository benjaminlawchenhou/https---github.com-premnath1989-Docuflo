//
//  DocumentViewing.m
//  DocufloMBL
//
//  Created by Premnath on 4/20/15.
//  Copyright (c) 2015 tfqnet. All rights reserved.
//

#import "DocumentViewing.h"
#import "Mortage.h"
#import "PropertyManagement.h"
#import "TotalFinance.h"

@interface DocumentViewing ()

@end

@implementation DocumentViewing
@synthesize txxxx,product,label;
@synthesize mortage,PassWord,scrollView,webView,loginButton,logOut;


#define MAX_LENGTH 7

- (void)viewDidLoad
{
    
    [super viewDidLoad];
   
    self.view.backgroundColor = [UIColor colorWithRed:178.0f/255.0f green:177.0f/255.0f blue:177.0f/255.0f alpha:1.0f];
    
    UIGraphicsBeginImageContext(CGSizeMake(1900, 1524));
    //   [drawImage.image drawInRect:CGRectMake(0, 0, 560, 660)];
    //
    [[UIImage imageNamed:@"ipad_bg_4.jpg"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    

    
    
//    UIWebView *webView = [[UIWebView alloc]init];
//    NSString *urlString = @"http://www.sourcefreeze.com";
//    NSURL *url = [NSURL URLWithString:urlString];
//    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
//    [webView loadRequest:urlRequest];
//    [self.view addSubview:webView];
//    
    
    mortage= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    mortage = [[UIButton alloc] initWithFrame:CGRectMake(150,305, 220,50)];
    mortage.backgroundColor = [UIColor blackColor];
    mortage.layer.borderColor = [UIColor blackColor].CGColor;
    mortage.layer.borderWidth = 0.5f;
    mortage.layer.cornerRadius = 10.0f;
    [mortage addTarget:self action:@selector(mortageView) forControlEvents:UIControlEventTouchUpInside];
    [mortage setTitle:@"mortage" forState:UIControlStateNormal];
    mortage.highlighted = YES;
    [mortage setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:mortage];
    
    
    txxxx= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    txxxx = [[UIButton alloc] initWithFrame:CGRectMake(150,505, 220,50)];
    txxxx.backgroundColor = [UIColor blackColor];
    txxxx.layer.borderColor = [UIColor blackColor].CGColor;
    txxxx.layer.borderWidth = 0.5f;
    txxxx.layer.cornerRadius = 10.0f;
    [txxxx addTarget:self action:@selector(txxxView) forControlEvents:UIControlEventTouchUpInside];
    [txxxx setTitle:@"xxxxx" forState:UIControlStateNormal];
    txxxx.highlighted = YES;
    [txxxx setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:txxxx];
    
    product= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    product = [[UIButton alloc] initWithFrame:CGRectMake(150,705, 220,50)];
    product.backgroundColor = [UIColor blackColor];
    product.layer.borderColor = [UIColor blackColor].CGColor;
    product.layer.borderWidth = 0.5f;
    product.layer.cornerRadius = 10.0f;
    [product addTarget:self action:@selector(productView) forControlEvents:UIControlEventTouchUpInside];
    [product setTitle:@"Product" forState:UIControlStateNormal];
    product.highlighted = YES;
    [product setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:product];
    
    logOut= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    logOut = [[UIButton alloc] initWithFrame:CGRectMake(600,30, 100,50)];
    logOut.backgroundColor = [UIColor blackColor];
    logOut.layer.borderColor = [UIColor blackColor].CGColor;
    logOut.layer.borderWidth = 0.5f;
    logOut.layer.cornerRadius = 10.0f;
    [logOut addTarget:self action:@selector(LogOut) forControlEvents:UIControlEventTouchUpInside];
    [logOut setTitle:@"Log Out" forState:UIControlStateNormal];
    logOut.highlighted = YES;
    [logOut setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:logOut];


}


- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    if([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    
    return YES;
}



- (void) alertStatus:(NSString *)msg :(NSString *) title
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:msg delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alertView show];
}

-(void)mortageView
{
    Mortage *controller = [[Mortage alloc]init];
    //[controller:self.GroupPb];
    
    controller.modalPresentationStyle =UIModalPresentationFormSheet;
    
    [self presentViewController:controller animated:YES completion:Nil];

    
}

-(void)txxxView
{
    TotalFinance *controller = [[TotalFinance alloc]init];
    //[controller:self.GroupPb];
    
    controller.modalPresentationStyle =UIModalPresentationFormSheet;
    
    [self presentViewController:controller animated:YES completion:Nil];

}


-(void)productView
{
    PropertyManagement *controller = [[PropertyManagement alloc]init];
    //[controller:self.GroupPb];
    
    controller.modalPresentationStyle =UIModalPresentationFormSheet;
    
    [self presentViewController:controller animated:YES completion:Nil];

}

-(void)LogOut
{
    [self dismissModalViewControllerAnimated:YES];
}




- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSURL *myurl= [[connection currentRequest] URL];
    NSString *url_st =[myurl absoluteString];
    NSLog(@"myurl %@",myurl);
    NSLog(@"url_st %@",url_st);
    
    
    
    NSString *sData = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"ret data %@",sData);
    
    NSLog(@"ret data2 %d",sData.length);
    
   
}


//-(void) Login:(NSString *)username :(NSString *)password
//{
//
//    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.2.149/biprofilesearch/default.aspx?type=2&cd=27/Apr/2012 36:06:08&pn=FOSREGISTRATION&pf=FOS REFERENCE NUMBER|DOCUMENT CODE&pfv=PF1206400003|ACAL001001&un=fosquery&prdoc=1&svdoc=1&anndoc=1&deldoc=1&updoc=1&val=45cbc1d051632250f3b05faff570f3b4d6bdb963e46895a87e055b4d98cdd354"]];
//
//// Create url connection and fire request
//NSURLConnection *conn = [[NSURLConnection alloc] initWithRequest:request delegate:self];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
