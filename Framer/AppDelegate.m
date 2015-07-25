//
//  AppDelegate.m
//  Framer
//
//  Created by Jayanth Prathipati on 7/25/15.
//  Copyright (c) 2015 TouchTap Studios. All rights reserved.
//

#import "AppDelegate.h"
#import <OBMenuBarWindow/OBMenuBarWindow.h>

@interface AppDelegate ()

@property (weak) IBOutlet OBMenuBarWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    self.window.menuBarIcon = [NSImage imageNamed:@"MenuBarIcon"];
    self.window.highlightedMenuBarIcon = [NSImage imageNamed:@"MenuBarIcon2"];
    self.window.hasMenuBarIcon = YES;
    self.window.attachedToMenuBar = YES;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
