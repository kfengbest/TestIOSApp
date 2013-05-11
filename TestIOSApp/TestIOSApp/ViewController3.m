//
//  ViewController3.m
//  TestIOSApp
//
//  Created by Kaven Feng on 5/11/13.
//  Copyright (c) 2013 Kaven Feng. All rights reserved.
//

#import "ViewController3.h"

@interface ViewController3 ()
{
    
}

@property(nonatomic,weak) IBOutlet UITextField* textField;
@property(nonatomic,weak) IBOutlet UIToolbar*   toolBar;
@property(nonatomic,weak) IBOutlet UIBarButtonItem* searchButton;

- (IBAction)shareButtonTabed:(id)sender;

@end

@implementation ViewController3

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"bg_cork.png"]];
    
    UIImage* img1 = [[UIImage imageNamed:@"navbar.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(20, 20, 20, 20)];
    [self.toolBar setBackgroundImage:img1 forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
    
    UIImage* img2 = [[UIImage imageNamed:@"button.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(8, 8, 8, 8)];
    [self.searchButton setBackgroundImage:img2 forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    self.textField.background = [[UIImage imageNamed:@"search_field.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10)];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)shareButtonTabed:(id)sender{
    
}

@end
