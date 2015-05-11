//
//  CALayer.m
//  <%= project_name %>
//
//  Created by <%= author %> on <%= Time.now.strftime("%-m/%-d/%y") %>
//  Copyright (c) <%= Time.now.strftime('%Y') %> <%= company %>. All rights reserved.
//

#import "CALayer+positioning.h"

@implementation CALayer (Positioning)

#pragma Setters

- (void)setX:(CGFloat)x {
  self.frame = CGRectIntegral(CGRectMake(x, self.y, self.width, self.height));
}

- (void)setY:(CGFloat)y {
  self.frame = CGRectIntegral(CGRectMake(self.x, y, self.width, self.height));
}

- (void)setWidth:(CGFloat)width {
  self.frame = CGRectIntegral(CGRectMake(self.x, self.y, width, self.height));
}

- (void)setHeight:(CGFloat)height {
  self.frame = CGRectIntegral(CGRectMake(self.x, self.y, self.width, height));
}

#pragma Getters

- (CGFloat)x {
  return self.frame.origin.x;
}

- (CGFloat)y {
  return self.frame.origin.y;
}

- (CGFloat)width {
  return self.frame.size.width;
}

- (CGFloat)height {
  return self.frame.size.height;
}

@end
