//
//  CustomScrollView.m
//  ScratchObjC
//
//  Created by Shawn Dempsey on 7/21/22.
//

#import "CustomScrollView.h"

@implementation CustomScrollView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (void)scrollWheel:(NSEvent *)event
{
  return [super scrollWheel:event];
}

@end
