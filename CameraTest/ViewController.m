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

#pragma mark -
#pragma mark - View Lifecycke

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

#pragma mark -
#pragma mark - Actions

- (void)showCameraRollScreen {
    [self presentViewController:self.imagePicker animated:YES completion:nil];
}

#pragma mark -
#pragma mark - Lazy Load

-(UIImagePickerController *)imagePicker{
    if(!_imagePicker){
        _imagePicker = [[UIImagePickerController alloc]init];
        _imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    }
    return _imagePicker;
}

@end
