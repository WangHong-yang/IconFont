//
//  UIImage+iconFont.m
//  DiiiPlan
//
//  Created by hqlulu on 16/5/20.
//  Copyright © 2016年 hqlulu. All rights reserved.
//

#import "UIImage+iconFont.h"

//自定义对应关系，建议iconfont.cn网站打包下载时可以生成此列表
//一行一个，用字体里的名字对应上编码即可

//便捷网页工具转换： http://www.aslibra.com/iconFont/

#define kTBCityIconDictionary   @{\
@"nice":@"\U0000e600",\
@"check":@"\U0000e601",\
@"关闭":@"\U0000e602",\
@"":@""}

@implementation UIImage (iconFont)

+ (UIImage *)iconWithName:(NSString*)name fontSize:(CGFloat)size color:(UIColor*)color
{
    NSDictionary *nameToUnicode = kTBCityIconDictionary;
    NSString *code = nameToUnicode[name];
    TBCityIconInfo *info = TBCityIconInfoMake(code, size, color);
    return [self iconWithInfo:info];
}
@end
