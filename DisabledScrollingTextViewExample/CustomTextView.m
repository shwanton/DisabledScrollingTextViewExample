//
//  CustomTextView.m
//  ScratchObjC
//
//  Created by Shawn Dempsey on 7/19/22.
//

#import "CustomTextView.h"

@implementation CustomTextView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (NSView *)hitTest:(NSPoint)point
{
  return self;
}

@end
