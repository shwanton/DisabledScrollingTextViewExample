//
//  ViewController.m
//  ScratchObjC
//
//  Created by Shawn Dempsey on 7/19/22.
//

#import "ViewController.h"
#import "CustomScrollView.h"
#import "CustomTextView.h"
#import "CustomClipView.h"

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  NSScrollView *disabledScrollView = [self genScrollViewWithFrame:self.scrollDisabledMultilineTextView.bounds shouldConstrain:YES];
  [self.scrollDisabledMultilineTextView addSubview:disabledScrollView];
  
  NSScrollView *scrollingTextView = [self genScrollViewWithFrame:self.scrollingMultilineTextView.bounds shouldConstrain:NO];
  [self.scrollingMultilineTextView addSubview:scrollingTextView];
}

- (NSScrollView *)genScrollViewWithFrame:(NSRect)contentRect shouldConstrain:(BOOL)constrainClipViewScrolling
{
  NSScrollView *scrollView = [[CustomScrollView alloc] initWithFrame:contentRect];

  CustomClipView *clipView = [[CustomClipView alloc] initWithFrame:scrollView.frame];
  [clipView setConstrainScrolling:constrainClipViewScrolling];
//  [clipView setDrawsBackground:YES];
//  [clipView setBackgroundColor:[NSColor greenColor]];
  [scrollView setContentView:clipView];

  [scrollView setBorderType:NSGrooveBorder];
  [scrollView setBackgroundColor:[NSColor blueColor]];
  [scrollView setDrawsBackground:NO];
  
  [scrollView setHasVerticalScroller:YES];
  [scrollView setHasHorizontalScroller:NO];
  
  [scrollView setAutoresizingMask:NSViewWidthSizable | NSViewHeightSizable];
  [scrollView setDocumentView:[self genTextView:[scrollView contentSize]]];
  
  return scrollView;
}

- (NSTextView *)genTextView:(NSSize)contentSize
{
  NSTextView *textView = [[CustomTextView alloc] initWithFrame:NSMakeRect(0, 0, contentSize.width, contentSize.height)];
//  [textView setBackgroundColor:[NSColor grayColor]];
//  [textView setTextColor:[NSColor whiteColor]];
  [textView setDrawsBackground:YES];

  [textView setMinSize:NSMakeSize(0.0, contentSize.height)];
  [textView setMaxSize:NSMakeSize(FLT_MAX, FLT_MAX)];

  [textView setVerticallyResizable:YES];
  [textView setHorizontallyResizable:YES];
  
  [textView setAutoresizingMask:NSViewWidthSizable];

  [[textView textContainer]
              setContainerSize:NSMakeSize(contentSize.width, FLT_MAX)];
  
//  [[textView textContainer] setWidthTracksTextView:YES];
//  [[textView textContainer] setHeightTracksTextView:YES];
  [[textView textContainer] setMaximumNumberOfLines:0];
  
  return textView;
}

- (NSTextField *)genTextField
{
  NSTextField *label = [[NSTextField alloc] initWithFrame:NSMakeRect(0, 0, 200, 22)];
  [label setStringValue:@"Multiline Text View"];
  [label setBezeled:NO];
  [label setDrawsBackground:NO];
//  [headerLabel setEditable:NO];
//  [headerLabel setSelectable:NO];
  
  return label;
}

- (IBAction)didToggleScrollingButton:(id)sender {
//  if (clipView.constrainScrolling == YES) {
//    clipView.constrainScrolling = NO;
//    [self.disableScrollingButton setTitle:@"Disabled"];
//  } else {
//    clipView.constrainScrolling = YES;
//    [self.disableScrollingButton setTitle:@"Enabled"];
//  }
//
//  [self.disableScrollingButton setNextState];
}
@end
