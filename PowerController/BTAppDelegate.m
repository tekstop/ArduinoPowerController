//
//  BTAppDelegate.m
//  PowerController
//
//  Created by tekstop on 7/23/12.
//  Copyright (c) 2012 All rights reserved.
//

#import "BTAppDelegate.h"

@implementation BTAppDelegate

@synthesize window = _window;
@synthesize connectionButton = _connectionButton;
@synthesize powerButton = _powerButton;

bool powerButtonState;
bool connectionButtonState;


- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Starting code
    powerButtonState = false;
    connectionButtonState = false;
    arduino = [[Matatino alloc] initWithDelegate:self];
    
}
- (IBAction)switchOnOff:(NSButton *)sender 
{
    if(!powerButtonState)
    {
        if([arduino isConnected])
        {
            [arduino send:@"1"];
            powerButtonState = true;
        }
    }
    else 
    {
        if([arduino isConnected])
        {
            [arduino send:@"0"];
            powerButtonState = false;
        }
    }
}
- (IBAction)connectToBT:(NSButton *)sender 
{
    if(![arduino isConnected])
    {
        NSString *myDevice = @"/dev/cu.RN42-9A7D-SPP";
        // Connect to your device with 9600 baud
        if([arduino connect:myDevice withBaud:B115200]) 
        {
            sender.title = @"Connected";
            connectionButtonState = true;
        }
    } 
    else
    {
        [arduino disconnect];
        sender.title = @"Connect";
        connectionButtonState = false;
    }
}


- (NSApplicationTerminateReply) applicationShouldTerminate:(NSApplication *)sender {
    // Safely disconnect
    [arduino disconnect];
    return NSTerminateNow;
}


- (void) receivedString:(NSString *)rx {
}
- (void) portAdded:(NSArray *)ports {
}
- (void) portRemoved:(NSArray *)ports {
}
- (void) portClosed {
}


@end
