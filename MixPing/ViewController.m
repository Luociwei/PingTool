//
//  ViewController.m
//  MixPing
//
//  Created by ciwei luo on 2020/3/31.
//  Copyright © 2020 ciwei luo. All rights reserved.
//

#import "ViewController.h"
#import <CwGeneralManagerFrameWork/Task.h>
#import <CwGeneralManagerFrameWork/TextView.h>

@interface ViewController ()
@property (unsafe_unretained) IBOutlet NSTextView *logview;

@property (weak) IBOutlet NSTableView *itemsTableView;
@property (weak) IBOutlet NSTableView *snTableView;
@property (weak) IBOutlet NSTextField *labelPath;
    
@property (nonatomic,strong)Task *vrectReadTask;
    
@property (nonatomic,strong)Task *vrectInputsTask;

@property (nonatomic,strong)TextView *view1;
@property (nonatomic,strong)TextView *view2;
@property (nonatomic,strong)TextView *view3;
@property (nonatomic,strong)TextView *view4;
@property (nonatomic,strong)TextView *view5;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view1 = [TextView cw_allocInitWithFrame:NSMakeRect(17, 520, 320, 110)];
    [self.view addSubview:self.view1];
    
    self.view2 = [TextView cw_allocInitWithFrame:NSMakeRect(17, 392, 320, 110)];
    [self.view addSubview:self.view2];
    
    self.view3 = [TextView cw_allocInitWithFrame:NSMakeRect(17, 264, 320, 110)];
    [self.view addSubview:self.view3];
    
    self.view4 = [TextView cw_allocInitWithFrame:NSMakeRect(17, 143, 320, 105)];
    [self.view addSubview:self.view4];
    
    self.view5 = [TextView cw_allocInitWithFrame:NSMakeRect(17, 12, 320, 110)];
    [self.view addSubview:self.view5];
    
//    _vrectReadTask =[[PythonTask alloc] initWithLauchPath:@"/bin/sh" arguments:[NSArray arrayWithObjects:@"-c",@"hidreport -v 0x05ac -p 0x041F -i 3 inputs", nil]];
////
//    _vrectInputsTask =[[PythonTask alloc] initWithLauchPath:@"/bin/sh" arguments:[NSArray arrayWithObjects:@"-c",vrectInit1,vrectInit2,vrectInit3,nil]];

    [self.view1 setPingIpAddress:@"169.254.1.32"];
    [self.view2 setPingIpAddress:@"169.254.1.33"];
    [self.view3 setPingIpAddress:@"169.254.1.34"];
    [self.view4 setPingIpAddress:@"169.254.1.35"];
    [self.view5 setPingIpAddress:@"169.254.1.20"];
  
    
}




@end
