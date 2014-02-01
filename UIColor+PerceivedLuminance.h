#import <UIKit/UIKit.h>

/**
  @returns a floating point value in the range: 0 to 1
  A value of 0.5 should be considered mediumly dark as far as the *human* eye
  is concerned.

  Useful if you have a region with a runtime determined backgroundcolor and you
  don't know whether to show white (light) or black (dark) text.

  Useful in conjunction with the `UIImage+AverageColor` pod, which will return
  the average color of an image, should you have a background image.
 **/

@interface UIColor (PerceivedLuminance)

- (double)perceivedLuminance;

@end
