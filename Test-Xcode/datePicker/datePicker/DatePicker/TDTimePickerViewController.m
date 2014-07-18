//
//  TDTimePickerViewController.m
//  Gift
//
//  Created by apple on 7/16/13.
//  Copyright (c) 2013 Apple. All rights reserved.
//

#import "TDTimePickerViewController.h"

@interface TDTimePickerViewController ()

@end

@implementation TDTimePickerViewController
@synthesize timePicker, delegate;
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
    //timePicker.timeZone = [NSDate date];
    timePicker.date = [NSDate date];
    
    NSLog(@"%@", timePicker.date);
  
    
	// we need to set the subview dimensions or it will not always render correctly
	// http://stackoverflow.com/questions/1088163
	for (UIView* subview in timePicker.subviews) {
		subview.frame = timePicker.bounds;
	}
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSArray *languages = [defaults objectForKey:@"AppleLanguages"];
    NSLocale *locals = [[NSLocale alloc] initWithLocaleIdentifier:[languages objectAtIndex:0]];
	
	[timePicker setLocale:locals];
}

#pragma mark -
#pragma mark Memory Management
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldAutorotate {
    return YES;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

#pragma mark -
#pragma mark Actions

-(IBAction)saveDateEdit:(id)sender {
	if([self.delegate respondsToSelector:@selector(timePickerSetDate:)]) {
		[self.delegate timePickerSetDate:self];
	}
}

-(IBAction)clearDateEdit:(id)sender {
	if([self.delegate respondsToSelector:@selector(timePickerClearDate:)]) {
		[self.delegate timePickerClearDate:self];
	}
}

-(IBAction)cancelDateEdit:(id)sender {
	if([self.delegate respondsToSelector:@selector(timePickerCancel:)]) {
		[self.delegate timePickerCancel:self];
	} else {
		// just dismiss the view automatically?
	}
}

- (void)viewDidUnload {
    [super viewDidUnload];
    
	self.timePicker = nil;
	self.delegate = nil;
}






@end
