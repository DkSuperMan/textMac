//
//  ViewController.m
//  textMacPro
//
//  Created by jin on 15/5/15.
//  Copyright (c) 2015年 jinchen. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSButton* pushButton = [[NSButton alloc] initWithFrame:NSMakeRect(100, 150, 100, 150)];
    pushButton.bezelStyle = NSRoundedBezelStyle;
    [pushButton  setTarget:self];
    [pushButton setAction:@selector(buttonClick1:)];
    [self.view addSubview:pushButton];
    
    NSButton* pushButton1 = [[NSButton alloc] initWithFrame:NSMakeRect(100, 50, 100, 150)];
    pushButton1.bezelStyle = NSRoundedBezelStyle;
    [pushButton1  setTarget:self];
    [pushButton1 setAction:@selector(buttonClick2:)];
    [self.view addSubview:pushButton1];
    
}

- (void)buttonClick1:(id)sender
{
    NSInteger varA = 0;
    NSInteger varB = 2;
    varA = varB + 2;
    NSLog(@"varA is %ld varB is %ld",varA,varB);
}

- (void)buttonClick2:(id)sender
{
    NSAlert *alert = [[NSAlert alloc] init];
    
    [alert addButtonWithTitle:@"OK"];
    
    [alert addButtonWithTitle:@"Cancel"];
    
    [alert setMessageText:@"Delete the record?"];
    
    [alert setInformativeText:@"Deleted records cannot be restored."];
    
    [alert setAlertStyle:NSWarningAlertStyle];
    
    [alert beginSheetModalForWindow:self.view.window completionHandler:^(NSModalResponse returnCode) {
        NSLog(@"returnCode is %ld",returnCode);
    }];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
