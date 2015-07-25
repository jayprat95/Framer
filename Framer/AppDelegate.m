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
- (IBAction)plusButtonClicked:(id)sender {
    // Create the File Open Dialog class.
    NSOpenPanel* openDlg = [NSOpenPanel openPanel];
    
    // Enable the selection of files in the dialog.
    [openDlg setCanChooseFiles:YES];
    
    // Multiple files not allowed
    [openDlg setAllowsMultipleSelection:NO];
    
    // Can't select a directory
    [openDlg setCanChooseDirectories:NO];
    
    // Display the dialog. If the OK button was pressed,
    // process the files.
    if ( [openDlg runModal] == NSModalResponseOK )
    {
        // Get an array containing the full filenames of all
        // files and directories selected.
        NSArray* urls = [openDlg URLs];
        NSURL* fileUrl = [urls objectAtIndex:0];
        [[NSWorkspace sharedWorkspace] setDesktopImageURL:fileUrl forScreen:[NSScreen mainScreen] options:nil error:nil];
    }
}

@end
