#import "UIColor+PerceivedLuminance.h"

/*
The MIT License (MIT)

Copyright 2013 Path, Inc.
Copyright 2014 Max Howell

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

//Code adapted from https://github.com/path/FastImageCache/blob/4c7560f64f53ab4de59cd18555e9426fec4f4ac1/FastImageCacheDemo/Classes/FICDViewController.m#L367


@implementation UIColor (PerceivedLuminance)

- (double)perceivedLuminance {
    const CGFloat *components = CGColorGetComponents(self.CGColor);
    float r = components[0];
    float g = components[1];
    float b = components[2];

    // The human eye favors green, then red, then blue
    g *= 0.7152;
    r *= 0.2126;
    b *= 0.0722;

    return 1.0 - (g + r + b);
}

@end
