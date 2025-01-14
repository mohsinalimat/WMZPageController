//
//  WMZPageParam.m
//  WMZPageController
//
//  Created by wmz on 2019/9/24.
//  Copyright © 2019 wmz. All rights reserved.
//

#import "WMZPageParam.h"

@implementation WMZPageParam

WMZPageParam * PageParam(void){
    return  [WMZPageParam new];
}
WMZPagePropSetFuncImplementation(WMZPageParam, NSArray*,               wTitleArr)
WMZPagePropSetFuncImplementation(WMZPageParam, NSArray*,               wControllers)
WMZPagePropSetFuncImplementation(WMZPageParam, PageTitleMenu,          wMenuAnimal)
WMZPagePropSetFuncImplementation(WMZPageParam, BOOL,                   wMenuAnimalTitleBig)
WMZPagePropSetFuncImplementation(WMZPageParam, BOOL,                   wMenuAnimalTitleGradient)
WMZPagePropSetFuncImplementation(WMZPageParam, BOOL,                   wMenuFixShadow)
WMZPagePropSetFuncImplementation(WMZPageParam, CGFloat,                wMenuWidth)
WMZPagePropSetFuncImplementation(WMZPageParam, PageMenuPosition,       wMenuPosition)
WMZPagePropSetFuncImplementation(WMZPageParam, CGFloat,                wMenuTitleOffset)
WMZPagePropSetFuncImplementation(WMZPageParam, CGFloat,                wMenuTitleWidth)
WMZPagePropSetFuncImplementation(WMZPageParam, NSInteger,              wMenuDefaultIndex)
WMZPagePropSetFuncImplementation(WMZPageParam, UIColor*,               wMenuTitleColor)
WMZPagePropSetFuncImplementation(WMZPageParam, CGFloat,                wMenuCellMargin)
WMZPagePropSetFuncImplementation(WMZPageParam, CGFloat,                wMenuCellPadding)
WMZPagePropSetFuncImplementation(WMZPageParam, UIColor*,               wMenuTitleSelectColor)
WMZPagePropSetFuncImplementation(WMZPageParam, CGFloat,                wMenuTitleFont)
WMZPagePropSetFuncImplementation(WMZPageParam, UIColor*,               wMenuIndicatorColor)
WMZPagePropSetFuncImplementation(WMZPageParam, CGFloat,                wMenuIndicatorWidth)
WMZPagePropSetFuncImplementation(WMZPageParam, CGFloat,                wMenuIndicatorHeight)
WMZPagePropSetFuncImplementation(WMZPageParam, CGFloat,                wMenuIndicatorRadio)
WMZPagePropSetFuncImplementation(WMZPageParam, NSString*,              wMenuIndicatorImage)
WMZPagePropSetFuncImplementation(WMZPageParam, PageBtnPosition,        wMenuImagePosition)
WMZPagePropSetFuncImplementation(WMZPageParam, CGFloat,                wMenuImageMargin)
WMZPagePropSetFuncImplementation(WMZPageParam, id,                     wMenuFixRightData)
WMZPagePropSetFuncImplementation(WMZPageParam, UIColor*,               wMenuBgColor)
WMZPagePropSetFuncImplementation(WMZPageParam, CGFloat,                wMenuFixWidth)
WMZPagePropSetFuncImplementation(WMZPageParam, PageHeadViewBlock,      wMenuHeadView)
WMZPagePropSetFuncImplementation(WMZPageParam, CGFloat,                wMenuTitleWeight)
WMZPagePropSetFuncImplementation(WMZPageParam, BOOL,                   wTopSuspension)
WMZPagePropSetFuncImplementation(WMZPageParam, BOOL,                   wFromNavi)
WMZPagePropSetFuncImplementation(WMZPageParam, BOOL,                   wNaviAlpha)
WMZPagePropSetFuncImplementation(WMZPageParam, PageClickBlock,         wEventFixedClick)
WMZPagePropSetFuncImplementation(WMZPageParam, PageClickBlock,         wEventClick)
WMZPagePropSetFuncImplementation(WMZPageParam, PageVCChangeBlock,      wEventBeganTransferController)
WMZPagePropSetFuncImplementation(WMZPageParam, PageVCChangeBlock,      wEventEndTransferController)
WMZPagePropSetFuncImplementation(WMZPageParam, PageChildVCScroll,      wEventChildVCDidSroll)
- (instancetype)init{
    if (self = [super init]) {
        _wMenuAnimal = PageTitleMenuNone;
        _wMenuTitleColor = PageColor(0x333333);
        _wMenuTitleSelectColor = PageColor(0xE5193E);
        _wMenuIndicatorColor = PageColor(0xE5193E);
        _wMenuBgColor = PageColor(0xffffff);
        _wMenuIndicatorHeight = 3.0f;
        _wMenuWidth = PageVCWidth;
        _wMenuAnimalTitleBig = YES;
        _wMenuAnimalTitleGradient = YES;
        _wMenuTitleFont = 17.0f;
        _wMenuImagePosition = PageBtnPositionTop;
        _wMenuImageMargin = 5.0f;
        _wMenuCellMargin = 30.0f;
        _wMenuCellPadding = 30.0f;
        _wMenuFixWidth = 45.0f;
        _wMenuFixShadow = YES;
        _wFromNavi = YES;
    }
    return self;
}

@end
