//
//  ViewController.h
//  ScratchObjC
//
//  Created by Shawn Dempsey on 7/19/22.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (weak) IBOutlet NSView *scrollDisabledMultilineTextView;
@property (weak) IBOutlet NSView *scrollingMultilineTextView;
@property (weak) IBOutlet NSButton *disableScrollingButton;

@end

