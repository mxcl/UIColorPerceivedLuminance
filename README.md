```ruby
pod 'UIColor+PerceivedLuminance'
```

Coupled with the `UIImage+AverageColor` pod you can use this pod to determine
what `preferredStatusBarStyle` to set for your ViewControllers:

```objc
#import "UIImage+AverageColor.h"
#import "UIColor+PerceivedLuminance.h"


@implementation MyViewController

- (UIStatusBarStyle)preferredStatusBarStyle {
    return self.topImageView.image.averageColor.perceivedLuminance > 0.5
        ? UIStatusBarStyleLightContent
        : UIStatusBarStyleDefault;
}

@end

```

If you are having trouble getting `preferredStatusBarStyle` to be respected, I recommmend this StackOverflow question/answer: http://stackoverflow.com/questions/19108513/uistatusbarstyle-preferredstatusbarstyle-does-not-work-on-ios-7/19365160#19365160
