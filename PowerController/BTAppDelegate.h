//
//  BTAppDelegate.h
//  PowerController
//
//  Created by tekstop on 7/23/12.
//  Copyright (c) 2012. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Matatino/Matatino.h>

@interface BTAppDelegate : NSObject <NSApplicationDelegate,MatatinoDelegate> {
    NSWindow *window;
    Matatino *arduino;
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSButton *connectionButton;
@property (assign) IBOutlet NSButton *powerButton;

@end
