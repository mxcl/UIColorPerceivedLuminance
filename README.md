```ruby
pod 'UIColor+PerceivedLuminance'
```

Coupled with the `UIImageAverageColor` pod you can use this pod to determine
what preferredStatusBarStyle to set for your ViewControllers:

```objc
#import "UIImage+AverageColor.h"
#import "UIColor+PerceivedLuminance.h"

…

//…

- (UIStatusBarStyle)preferredStatusBarStyle {
    return self.topImageView.image.averageColor.perceivedLuminance > 0.5
        ? UIStatusBarStyleLightContent
        : UIStatusBarStyleDefault;
}

```
