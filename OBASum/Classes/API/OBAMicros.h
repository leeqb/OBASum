//
//  OBAMicros.h
//  OBASum
//
//  Created by leeqb on 03/03/2018.
//  Copyright © 2018 ChengXin. All rights reserved.
//

#ifndef OBAMicros_h
#define OBAMicros_h

#define SCREEN_WIDTH    ([[UIScreen mainScreen] bounds].size.width) // 屏幕宽度
#define SCREEN_HEIGHT   ([[UIScreen mainScreen] bounds].size.height)    // 屏幕高度

// 颜色
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r,g,b) RGBA(r,g,b,1.0f)
#define HEXCOLOR(hex) [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16)) / 255.0 green:((float)((hex & 0xFF00) >> 8)) / 255.0 blue:((float)(hex & 0xFF)) / 255.0 alpha:1]
#define COLOR_RGB(rgbValue,a) [UIColor colorWithRed:((float)(((rgbValue) & 0xFF0000) >> 16))/255.0 green:((float)(((rgbValue) & 0xFF00)>>8))/255.0 blue: ((float)((rgbValue) & 0xFF))/255.0 alpha:(a)]

#endif /* OBAMicros_h */
