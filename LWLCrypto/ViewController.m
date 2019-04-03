//
//  ViewController.m
//  LWLCrypto
//
//  Created by linwenlong on 2019/4/3.
//  Copyright © 2019 linwenlong. All rights reserved.
//

#import "ViewController.h"
#import "NSString+LWLAES.h"

@interface ViewController ()
{
    NSArray * _sectionAndRowTitles;
}
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *encryptTextview;
@property (weak, nonatomic) IBOutlet UITextView *decryptTextview;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (IBAction)encrypt:(id)sender {
    
    NSString *encrypt = [_textField.text lwl_aes128Encrypt];
    NSLog(@"encrypt = %@",encrypt);
  _encryptTextview.text = encrypt;
    
}

- (IBAction)decrrypt:(id)sender {
  _decryptTextview.text = [_encryptTextview.text lwl_aes128Decrypt];
}

@end
