//
//  CustomClipView.m
//  ScratchObjC
//
//  Created by Shawn Dempsey on 7/19/22.
//

#import "CustomClipView.h"

@implementation CustomClipView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (instancetype)initWithFrame:(NSRect)frameRect
{
   if (self = [super initWithFrame:frameRect]) {
    self.constrainScrolling = NO;
  }
  
  return self;
}

- (NSRect)constrainBoundsRect:(NSRect)proposedBounds
{
  if (self.constrainScrolling == YES) {
    //  return NSZeroRect;
    //  return self.superview.bounds;
    //  NSSize size = self.superview.bounds.size;
    //  return NSMakeRect(0, 1, size.width, size.height);
    return NSMakeRect(0, 1, 0, 0); // why the 1?
  }
  
  return [super constrainBoundsRect:proposedBounds];
}

@end
