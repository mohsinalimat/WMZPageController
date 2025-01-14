# WMZPageController - 分页控制器,替换UIPageController方案,具备完整的生命周期,多种指示器样式,多种标题样式,可悬浮,支持ios13暗黑模式(仿优酷,爱奇艺,今日头条,简书,京东等多种标题菜单)

演示
==============
![WMZPageController222.gif](https://upload-images.jianshu.io/upload_images/9163368-7ab44e87aa8e5059.gif?imageMogr2/auto-orient/strip)

特性
==============
- 链式语法 结构优雅
- 支持顶部悬浮
- 支持多种指示器样式
- 支持富文本标题
- 支持图文混合标题
- 支持完整的生命周期
- 替换系统UIPageController的方案,减少内存,避免UIPageController的bug
- 支持ios13暗黑模式
- 支持固定最右边标题


用法
==============

### 默认模式

     WMZPageParam *param = PageParam()
    .wTitleArrSet(@[@"推荐",@"LOOK直播",@"画",@"现场",@"翻唱",@"MV",@"广场",@"游戏"])
    .wControllersSet(@[[Test new],[Test new],[Test new],[Test new],[Test new],[Test new],[Test new],[Test new]]);
     WMZPageController *VC =  [WMZPageController new];
     VC.param = param;
    [vc.navigationController pushViewController:VC animated:YES];


### 爱奇艺
	
     param.wTitleArrSet(data)
      .wControllersSet(vcArr)
      .wMenuTitleFontSet(17)
      .wMenuTitleWeightSet(50)
      .wMenuTitleColorSet(PageColor(0xeeeeee))
      .wMenuTitleSelectColorSet(PageColor(0xffffff))
      .wMenuIndicatorColorSet(PageColor(0x00dea3))
      .wMenuIndicatorWidthSet(10.0f)
      .wMenuFixRightDataSet(@"≡")
      .wMenuAnimalTitleGradientSet(NO)
      .wTopSuspensionSet(YES)
      .wMenuAnimalSet(PageTitleMenuAiQY);
    
    //数据源
    data = @[
    @{
       @"name":@"推荐",
       @"backgroundColor":@[PageColor(0x15314b),PageColor(0x009a93)]},
    @{
       @"name":@"家务男",
       @"backgroundColor":PageColor(0xffdfa2),
       @"indicatorColor":PageColor(0x9b4f2d),
       @"titleSelectColor":PageColor(0x9b4f2d),
       @"titleColor":PageColor(0xd79869)
    },
    @{
       @"name":@"70年",
       @"titleColor":PageColor(0xffaa68),
       @"backgroundColor":PageColor(0xd70022),
       @"indicatorColor":PageColor(0xfffcc6),
       @"titleSelectColor":PageColor(0xfffcc6)
     },
     @{
       @"name":@"VIP",
       @"backgroundColor":PageColor(0x3d4659),
       @"titleSelectColor":PageColor(0xe2c285),
       @"indicatorColor":PageColor(0xe2c285),
       @"titleColor":PageColor(0x9297a5)
     },
     @{@"name":@"热点",@"backgroundColor":@[PageColor(0x15314b),PageColor(0x009a93)]},
     @{@"name":@"电视剧",@"backgroundColor":@[PageColor(0x15314b),PageColor(0x009a93)]},
     @{@"name":@"电影",@"backgroundColor":PageColor(0x007e80)},
     @{@"name":@"儿童",@"backgroundColor":@[PageColor(0x15314b),PageColor(0x009a93)]},
     @{@"name":@"游戏",@"backgroundColor":PageColor(0x1c2c3b)},
    ];
}


      
    
### 京东

       param.wTitleArrSet(data)
       .wControllersSet(vcArr)
       .wMenuTitleSelectColorSet(PageColor(0xFFFBF0))
       .wMenuBgColorSet(PageColor(0xff183b))
       .wMenuTitleColorSet(PageColor(0xffffff))
       .wMenuAnimalTitleGradientSet(NO)
       .wMenuIndicatorImageSet(@"E")
       .wMenuIndicatorHeightSet(15)
       .wMenuIndicatorWidthSet(20)
       .wMenuCellPaddingSet(40)
       .wMenuAnimalSet(PageTitleMenuLine);
       
       //数据源
       data = @[
         @"推荐",
         @{@"image":@"F"},
         @"榜单",
         @"5G",
         @"抽奖",
         @"新时代",
         @{@"image":@"F",@"selectImage":@"D"},
         @"电竞",
         @"明星"]
         
###  悬浮 (需实现WMZPageProtocol协议返回可滚动的视图)
       param.wTitleArrSet(data)
       .wControllersSet(vcArr)
        //悬浮开启
       .wTopSuspensionSet(YES)
        //导航栏透明度变化
       .wNaviAlphaSet(YES)
        //头视图y坐标从0开始
       .wFromNaviSet(NO)
        //头部
       .wMenuHeadViewSet(^UIView *{
            UIView *back = [UIView new];
            back.backgroundColor = [UIColor whiteColor];
            back.frame = CGRectMake(0, 0, PageVCWidth, 70+PageVCStatusBarHeight);
            UISearchBar *bar = [UISearchBar new];
            bar.tag = 999;
            bar.barTintColor = [UIColor whiteColor];
            bar.backgroundColor = [UIColor whiteColor];
            bar.searchBarStyle = UISearchBarStyleMinimal;
            bar.searchTextField.textAlignment = NSTextAlignmentCenter;
            bar.placeholder = @"请搜索";
            bar.frame = CGRectMake(10, PageVCStatusBarHeight, PageVCWidth-20, 70);
            [back addSubview:bar];
            return back;
       });
       
    
###  暗黑模式 传入的color用宏 PageDarkColor(PageColor(0x333333), PageColor(0xffffff))#####   第一个是正常的颜色 第二个是暗黑模式下的颜色

     
    

### 可配置的全部参数说明
      //标题数组 必传
      wTitleArr
      
      //VC数组 必传
      wControllers
      
      //特殊属性 菜单滑动到顶部悬浮 default NO
      wTopSuspension
      
      //导航栏透明度变化 default NO
      wNaviAlpha
      
      //头部视图frame从导航栏下方开始 default YES
      wFromNavi
      
      //菜单最右边固定内容是否开启左边阴影 defaulf YES
      wMenuFixShadow
      
      //选中变大 default yes
      wMenuAnimalTitleBig
      
      //开启渐变色 default yes
      wMenuAnimalTitleGradient
      
      //默认选中 default 0
      wMenuDefaultIndex
      
      //菜单最右边固定内容 default nil
      wMenuFixRightData
      
      //菜单最右边固定内容宽度 defaulf 45
      wMenuFixWidth
      
      //菜单标题动画效果 default  PageTitleMenuMove
      wMenuAnimal
      
      //头部视图 default nil
      wMenuHeadView
      
      //菜单宽度 default 屏幕宽度
      wMenuWidth
      
      //菜单背景颜色 default ffffff
      wMenuBgColor
      
      //菜单按钮的左右间距 default 20
      wMenuCellMargin
      
      //菜单按钮的上下间距 default 20 (可根据此属性改变导航栏的高度)
      wMenuCellPadding
      
      //菜单的位置 default PageMenuPositionLeft
      wMenuPosition
      
      //菜单标题左右间距 default 0
      wMenuTitleOffset
      
      //菜单标题字体 default 15.0f
      wMenuTitleFont
      
      //菜单标题固定宽度 default 文本内容宽度+wMenuCellMargin
      wMenuTitleWidth
      
      //菜单标题字体粗体 default 0
      wMenuTitleWeight
      
      //菜单字体颜色 default 333333
      wMenuTitleColor
      
      //菜单字体选中颜色 default E5193E
      wMenuTitleSelectColor
      
      //菜单图文位置 default PageBtnPositionTop
      wMenuImagePosition
      
      //菜单图文位置间距 default 5
      wMenuImageMargin
      
      //指示器颜色 default E5193E
      wMenuIndicatorColor
      
      //指示器宽度 default 标题宽度+10
      wMenuIndicatorWidth
      
      //指示器图片 default nil
      wMenuIndicatorImage
      
      //指示器高度 default k1px
      wMenuIndicatorHeight
      
      //指示器圆角 default 0
      wMenuIndicatorRadio
      
      //初始化
      WMZPageParam * PageParam(void);
      
      //右边固定标题点击
      wEventFixedClick
      
      //标题点击
      wEventClick
      
      //控制器开始切换
      wEventBeganTransferController
      
      //控制器结束切换
      wEventEndTransferController
      
      //子控制器滚动(做滚动时候自己的操作)  =>开启悬浮有效
      wEventChildVCDidSroll
      
### 传入菜单数据说明

      普通
      @[@"推荐",@"LOOK直播",@"画",@"现场",@"翻唱",@"MV",@"广场",@"游戏"];
      
      换行 
      @[@"推荐\n10",@"LOOK直播\n100",@"画\n1000",@"现场\n6",@"翻唱\n4",@"MV\n好看的MV",@"广场\n4",@"游戏\n30"]
      
      带红点普通标题 badge红点
      @[
        @{@"name":@"推荐",@"badge":@(YES)},
        @"LOOK直播",
        @"画",
        @"现场",
        @{@"name":@"翻唱",@"badge":@(YES)},
        @"MV",
        @"广场",
        @{@"name":@"游戏",@"badge":@(YES)},
     ];
     
     带富文本  wrapColor第二行标题  firstColor第一行标题 
     @[
        @{@"name":@"推荐\n10",@"wrapColor":[UIColor brownColor]},
        @"LOOK直播\n10",
        @{@"name":@"画\n10",@"badge":@(YES),@"wrapColor":[UIColor purpleColor]},
        @"现场\n10",
        @{@"name":@"翻唱\n10",@"wrapColor":[UIColor blueColor],@"firstColor":[UIColor cyanColor]},
        @"MV\n10",
        @"MV\n10",
        @{@"name":@"游戏\n10",@"badge":@(YES),@"wrapColor":[UIColor yellowColor]},
    ];
    
    图片  image图片  selectImage选中图片
    @[
        @{@"name":@"推荐",@"image":@"B",@"selectImage":@"D"},
        @{@"name":@"LOOK直播",@"image":@"C",@"selectImage":@"D"},
        @{@"name":@"画",@"image":@"B",@"selectImage":@"D"},
        @{@"name":@"现场",@"image":@"C",@"selectImage":@"D"},
        @{@"name":@"翻唱",@"image":@"B",@"selectImage":@"D"},
        @{@"name":@"MV",@"image":@"C",@"selectImage":@"D"},
        @{@"name":@"游戏",@"badge":@(YES),@"image":@"B",@"selectImage":@"D"},
        @{@"name":@"广场",@"image":@"C",@"selectImage":@"D"},
    ];
    
    /*爱奇艺标题
    (滚动完改变颜色)
    indicatorColor 指示器颜色
    titleSelectColor 选中字体颜色
    titleColor 未选中字体颜色
    backgroundColor 选中背景颜色 (如果是数组则是背景色渐变色)
    */
    {
    return @[
    @{
       @"name":@"推荐",
       @"backgroundColor":@[PageColor(0x15314b),PageColor(0x009a93)]},
    @{
       @"name":@"家务男",
       @"backgroundColor":PageColor(0xffdfa2),
       @"indicatorColor":PageColor(0x9b4f2d),
       @"titleSelectColor":PageColor(0x9b4f2d),
       @"titleColor":PageColor(0xd79869)
    },
    @{
       @"name":@"70年",
       @"titleColor":PageColor(0xffaa68),
       @"backgroundColor":PageColor(0xd70022),
       @"indicatorColor":PageColor(0xfffcc6),
       @"titleSelectColor":PageColor(0xfffcc6)
     },
     @{
       @"name":@"VIP",
       @"backgroundColor":PageColor(0x3d4659),
       @"titleSelectColor":PageColor(0xe2c285),
       @"indicatorColor":PageColor(0xe2c285),
       @"titleColor":PageColor(0x9297a5)
     },
     @{@"name":@"热点",@"backgroundColor":@[PageColor(0x15314b),PageColor(0x009a93)]},
     @{@"name":@"电视剧",@"backgroundColor":@[PageColor(0x15314b),PageColor(0x009a93)]},
     @{@"name":@"电影",@"backgroundColor":PageColor(0x007e80)},
     @{@"name":@"儿童",@"backgroundColor":@[PageColor(0x15314b),PageColor(0x009a93)]},
     @{@"name":@"游戏",@"backgroundColor":PageColor(0x1c2c3b)},
    ];
### 详情看demo    
 

### 依赖
无任何依赖 

安装
==============

### CocoaPods
1. 将 cocoapods 更新至最新版本.
2. 在 Podfile 中添加 `pod 'WMZPageController'`。
3. 执行 `pod install` 或 `pod update`。
4. 导入 #import "WMZPageController.h"。

### 注:要消除链式编程的警告 
要在Buildding Settings 把CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF 设为NO

### 手动安装

1. 下载 WMZPageController 文件夹内的所有内容。
2. 将 WMZPageController 内的源文件添加(拖放)到你的工程。
3. 导入 #import "WMZPageController.h"

系统要求
==============
该库最低支持 `iOS 9.0` 和 `Xcode 9.0`。



许可证
==============
LEETheme 使用 MIT 许可证，详情见 [LICENSE](LICENSE) 文件。


个人主页
==============
使用过程中如果有什么bug欢迎给我提issue 我看到就会解决
[我的简书](https://www.jianshu.com/p/32e997b74d74)
