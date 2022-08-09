//
//  CustomClipView.h
//  ScratchObjC
//
//  Created by Shawn Dempsey on 7/19/22.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomClipView : NSClipView

@property (nonatomic, assign) BOOL constrainScrolling;

@end

NS_ASSUME_NONNULL_END
