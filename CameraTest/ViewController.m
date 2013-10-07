//
//  ViewController.m
//  CameraTest
//
//  Created by Michael Daniels on 10/7/13.
//  Copyright (c) 2013 Michael Daniels. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIImagePickerController *imagePicker;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self showCameraRollScreen];
}

- (void)showCameraRollScreen {
    
    self.imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    [self presentViewController:self.imagePicker animated:YES completion:nil];
}

#pragma mark -
#pragma mark - Lazy Load

-(UIImagePickerController *)imagePicker{
    if(!_imagePicker){
        _imagePicker = [[UIImagePickerController alloc]init];
    }
    return _imagePicker;
}

@end
