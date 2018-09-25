//
//  RaygunFileManager.h
//  raygun4apple
//
//  Created by Mitchell Duncan on 21/09/18.
//

#ifndef RaygunFileManager_h
#define RaygunFileManager_h

#import <Foundation/Foundation.h>

@class RaygunMessage, RaygunFile;

@interface RaygunFileManager : NSObject

+ (BOOL)createDirectoryAtPath:(NSString *)path withError:(NSError **)error;

- (NSString *)storeCrashReport:(RaygunMessage *)message;

- (NSArray<RaygunFile *> *)getAllStoredCrashReports;

- (BOOL)removeFileAtPath:(NSString *)path;

@end

#endif /* RaygunFileManager_h */
