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
@synthesize tradeFinance,product,label;
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
 
	//Logo
	UIView *LogoImg = [[UIView alloc] initWithFrame:CGRectMake(230, 240, 350, 131)];
	LogoImg.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"HLB Logo.png"]];
	[self.view addSubview:LogoImg];
    
    mortage= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    mortage = [[UIButton alloc] initWithFrame:CGRectMake(150, 405, 150,200)];
	UIImage *mortgageImg = [UIImage imageNamed:@"mortgage.png"];
	[mortage setImage:mortgageImg forState:UIControlStateNormal];
    [mortage addTarget:self action:@selector(mortageView) forControlEvents:UIControlEventTouchUpInside];
    [mortage setTitle:@"mortage" forState:UIControlStateNormal];
    mortage.highlighted = YES;
    [mortage setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:mortage];
	
    tradeFinance= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    tradeFinance = [[UIButton alloc] initWithFrame:CGRectMake(325,405, 150,200)];
	UIImage *TradeImg = [UIImage imageNamed:@"tradeFinance.png"];
	[tradeFinance setImage:TradeImg forState:UIControlStateNormal];
    [tradeFinance addTarget:self action:@selector(txxxView) forControlEvents:UIControlEventTouchUpInside];
    [tradeFinance setTitle:@"xxxxx" forState:UIControlStateNormal];
    tradeFinance.highlighted = YES;
    [tradeFinance setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:tradeFinance];
    
    product= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    product = [[UIButton alloc] initWithFrame:CGRectMake(500,405, 150,200)];
	UIImage *productImg = [UIImage imageNamed:@"PropertyManagement.png"];
	[product setImage:productImg forState:UIControlStateNormal];
    [product addTarget:self action:@selector(productView) forControlEvents:UIControlEventTouchUpInside];
    [product setTitle:@"Product" forState:UIControlStateNormal];
    product.highlighted = YES;
    [product setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:product];
	
	
	//Navigation Bar
	
	UIView *NavView = [[UIView alloc] initWithFrame:CGRectMake(10, 30, 750, 60)];
	NavView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"navigationBar.png"]];
	[self.view addSubview:NavView];
	
    logOut= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    logOut = [[UIButton alloc] initWithFrame:CGRectMake(700,35, 50,50)];
	UIImage *logoutImg = [UIImage imageNamed:@"log_out.png"];
	[logOut setImage:logoutImg forState:UIControlStateNormal];
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
