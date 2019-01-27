//
//  ViewController.m
//  MyFirstApp
//
//  Created by Kiet Ha on 1/27/19.
//  Copyright © 2019 Kiet Ha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSString *userName;
@property (weak, nonatomic) IBOutlet UITextField *userText;
@property (nonatomic, strong) NSString *passWord;
@property (weak, nonatomic) IBOutlet UITextField *passText;
@property (weak, nonatomic) IBOutlet UILabel *notiLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.userName = @"kiet";
    self.passWord = @"thisisaverysimpleapp";
    self.passText.secureTextEntry = YES;
}

- (IBAction)loginWasPressed:(id)sender {
    BOOL isUsersEqual = [self.userName isEqualToString:[self.userText text]];
    BOOL isPassEqual = [self.passWord isEqualToString:[self.passText text]];
    
    if(isUsersEqual && isPassEqual) {
        [self.notiLabel setText:@"nice you have the same user and pass as the code"];
    }
    else [self.notiLabel setText:@"try thinking harder"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
