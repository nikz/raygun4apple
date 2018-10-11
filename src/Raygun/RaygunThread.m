//
//  RaygunThread.m
//  raygun4apple
//
//  Created by raygundev on 8/2/18.
//  Copyright © 2018 Raygun Limited. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall remain in place
// in this source code.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

#import "RaygunThread.h"

#import "RaygunFrame.h"
#import "RaygunUtils.h"

@implementation RaygunThread

- (instancetype)initWithIndex:(NSNumber *)threadIndex {
    if (self = [super init]) {
        _threadIndex = threadIndex;
    }
    return self;
}

- (NSDictionary *)convertToDictionary {
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:@{@"threadNumber":_threadIndex}];
    
    dict[@"crashed"] = _crashed ? @YES : @NO;
    dict[@"current"] = _current ? @YES : @NO;
    
    if (![RaygunUtils IsNullOrEmpty:_name]) {
        dict[@"name"] = _name;
    }
    
    NSMutableArray *frames = [NSMutableArray new];
    for (RaygunFrame *frame in _frames) {
        NSDictionary *serialized = [frame convertToDictionary];
        if (serialized.allKeys.count > 0) {
            [frames addObject:serialized];
        }
    }
    dict[@"stackFrames"] = frames;
    
    return dict;
}

@end
