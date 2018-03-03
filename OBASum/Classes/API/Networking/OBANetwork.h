//
//  OBANetwork.h
//  OBASum
//
//  Created by leeqb on 03/03/2018.
//  Copyright © 2018 ChengXin. All rights reserved.
//

typedef void(^RequestFinishedBlock)(id responseObject, NSError *error);

@interface OBANetwork : NSObject

+ (void)post:(NSString *)url params:(NSDictionary *)params finishedBlock:(RequestFinishedBlock)finishedBlcok;

@end
