//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

#import "AmapMapFluttifyPlugin.h"
#import <objc/runtime.h>
#import "SubHandler/SubHandler0.h"
#import "SubHandler/SubHandler1.h"
#import "SubHandler/SubHandler2.h"
#import "SubHandler/SubHandler3.h"
#import "SubHandler/SubHandler4.h"
#import "SubHandler/SubHandler5.h"
#import "SubHandler/SubHandler6.h"
#import "SubHandler/SubHandler7.h"

// Dart端一次方法调用所存在的栈, 只有当MethodChannel传递参数受限时, 再启用这个容器
extern NSMutableDictionary<NSString*, NSObject*>* STACK;
// Dart端随机存取对象的容器
extern NSMutableDictionary<NSNumber*, NSObject*>* HEAP;
// 日志打印开关
extern BOOL enableLog;

@implementation AmapMapFluttifyPlugin {
  NSMutableDictionary<NSString*, Handler>* _handlerMap;
}

- (instancetype) initWithFlutterPluginRegistrar: (NSObject <FlutterPluginRegistrar> *) registrar {
  self = [super init];
  if (self) {
    _registrar = registrar;
    // 处理方法们
    _handlerMap = @{}.mutableCopy;

    [_handlerMap addEntriesFromDictionary: [self getSubHandler0]];
    [_handlerMap addEntriesFromDictionary: [self getSubHandler1]];
    [_handlerMap addEntriesFromDictionary: [self getSubHandler2]];
    [_handlerMap addEntriesFromDictionary: [self getSubHandler3]];
    [_handlerMap addEntriesFromDictionary: [self getSubHandler4]];
    [_handlerMap addEntriesFromDictionary: [self getSubHandler5]];
    [_handlerMap addEntriesFromDictionary: [self getSubHandler6]];
    [_handlerMap addEntriesFromDictionary: [self getSubHandler7]];
  }

  return self;
}

+ (void)registerWithRegistrar:(NSObject <FlutterPluginRegistrar> *)registrar {
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"me.yohom/amap_map_fluttify"
            binaryMessenger:[registrar messenger]];

  [registrar addMethodCallDelegate:[[AmapMapFluttifyPlugin alloc] initWithFlutterPluginRegistrar:registrar]
                           channel:channel];

  // 注册View
  [registrar registerViewFactory: [[MAAnnotationViewFactory alloc] initWithRegistrar:registrar] withId: @"me.yohom/MAAnnotationView"];
  [registrar registerViewFactory: [[MACustomCalloutViewFactory alloc] initWithRegistrar:registrar] withId: @"me.yohom/MACustomCalloutView"];
  [registrar registerViewFactory: [[MAMapViewFactory alloc] initWithRegistrar:registrar] withId: @"me.yohom/MAMapView"];
}

// Method Handlers
- (void)handleMethodCall:(FlutterMethodCall *)methodCall result:(FlutterResult)methodResult {
  if (_handlerMap[methodCall.method] != nil) {
    _handlerMap[methodCall.method](_registrar, [methodCall arguments], methodResult);
  } else {
    methodResult(FlutterMethodNotImplemented);
  }
}

// 委托方法们
- (void)traceManager : (MATraceManager*)manager didTrace: (NSArray<CLLocation*>*)locations correct: (NSArray<MATracePoint*>*)tracePoints distance: (double)distance withError: (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MATraceDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MATraceDelegate::traceManagerDidTracecorrectdistancewithError");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmanager = @(manager.hash);
  HEAP[argmanager] = manager;
  // list callback arg
  NSMutableArray<NSNumber*>* arglocations = [NSMutableArray arrayWithCapacity:locations.count];
  for (int i = 0; i < locations.count; i++) {
      NSObject* item = ((NSObject*) [locations objectAtIndex:i]);
      // return to dart side data
      arglocations[i] = @(item.hash);
      // add to HEAP
      HEAP[@(item.hash)] = item;
  }
  // list callback arg
  NSMutableArray<NSNumber*>* argtracePoints = [NSMutableArray arrayWithCapacity:tracePoints.count];
  for (int i = 0; i < tracePoints.count; i++) {
      NSObject* item = ((NSObject*) [tracePoints objectAtIndex:i]);
      // return to dart side data
      argtracePoints[i] = @(item.hash);
      // add to HEAP
      HEAP[@(item.hash)] = item;
  }
  // primitive callback arg
  NSNumber* argdistance = @(distance);
  // ref callback arg
  NSNumber* argerror = @(error.hash);
  HEAP[argerror] = error;

  [channel invokeMethod:@"Callback::MATraceDelegate::traceManagerDidTracecorrectdistancewithError" arguments:@{@"manager": argmanager, @"locations": arglocations, @"tracePoints": argtracePoints, @"distance": argdistance, @"error": argerror}];
  
}

- (void)mapViewRequireLocationAuth : (CLLocationManager*)locationManager
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MATraceDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MATraceDelegate::mapViewRequireLocationAuth");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* arglocationManager = @(locationManager.hash);
  HEAP[arglocationManager] = locationManager;

  [channel invokeMethod:@"Callback::MATraceDelegate::mapViewRequireLocationAuth" arguments:@{@"locationManager": arglocationManager}];
  
}

- (void)multiPointOverlayRenderer : (MAMultiPointOverlayRenderer*)renderer didItemTapped: (MAMultiPointItem*)item
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMultiPointOverlayRendererDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMultiPointOverlayRendererDelegate::multiPointOverlayRendererDidItemTapped");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argrenderer = @(renderer.hash);
  HEAP[argrenderer] = renderer;
  // ref callback arg
  NSNumber* argitem = @(item.hash);
  HEAP[argitem] = item;

  [channel invokeMethod:@"Callback::MAMultiPointOverlayRendererDelegate::multiPointOverlayRendererDidItemTapped" arguments:@{@"renderer": argrenderer, @"item": argitem}];
  
}

- (void)mapViewRegionChanged : (MAMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewRegionChanged");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewRegionChanged" arguments:@{@"mapView": argmapView}];
  
}

- (void)mapView : (MAMapView*)mapView regionWillChangeAnimated: (BOOL)animated
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewRegionWillChangeAnimated");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // primitive callback arg
  NSNumber* arganimated = @(animated);

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewRegionWillChangeAnimated" arguments:@{@"mapView": argmapView, @"animated": arganimated}];
  
}

- (void)mapView : (MAMapView*)mapView regionDidChangeAnimated: (BOOL)animated
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewRegionDidChangeAnimated");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // primitive callback arg
  NSNumber* arganimated = @(animated);

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewRegionDidChangeAnimated" arguments:@{@"mapView": argmapView, @"animated": arganimated}];
  
}

- (void)mapView : (MAMapView*)mapView mapWillMoveByUser: (BOOL)wasUserAction
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewMapWillMoveByUser");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // primitive callback arg
  NSNumber* argwasUserAction = @(wasUserAction);

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewMapWillMoveByUser" arguments:@{@"mapView": argmapView, @"wasUserAction": argwasUserAction}];
  
}

- (void)mapView : (MAMapView*)mapView mapDidMoveByUser: (BOOL)wasUserAction
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewMapDidMoveByUser");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // primitive callback arg
  NSNumber* argwasUserAction = @(wasUserAction);

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewMapDidMoveByUser" arguments:@{@"mapView": argmapView, @"wasUserAction": argwasUserAction}];
  
}

- (void)mapView : (MAMapView*)mapView mapWillZoomByUser: (BOOL)wasUserAction
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewMapWillZoomByUser");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // primitive callback arg
  NSNumber* argwasUserAction = @(wasUserAction);

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewMapWillZoomByUser" arguments:@{@"mapView": argmapView, @"wasUserAction": argwasUserAction}];
  
}

- (void)mapView : (MAMapView*)mapView mapDidZoomByUser: (BOOL)wasUserAction
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewMapDidZoomByUser");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // primitive callback arg
  NSNumber* argwasUserAction = @(wasUserAction);

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewMapDidZoomByUser" arguments:@{@"mapView": argmapView, @"wasUserAction": argwasUserAction}];
  
}

- (void)mapViewWillStartLoadingMap : (MAMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewWillStartLoadingMap");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewWillStartLoadingMap" arguments:@{@"mapView": argmapView}];
  
}

- (void)mapViewDidFinishLoadingMap : (MAMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewDidFinishLoadingMap");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidFinishLoadingMap" arguments:@{@"mapView": argmapView}];
  
}

- (void)mapViewDidFailLoadingMap : (MAMapView*)mapView withError: (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewDidFailLoadingMapWithError");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argerror = @(error.hash);
  HEAP[argerror] = error;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidFailLoadingMapWithError" arguments:@{@"mapView": argmapView, @"error": argerror}];
  
}

- (MAAnnotationView*)mapView : (MAMapView*)mapView viewForAnnotation: (id<MAAnnotation>)annotation
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewViewForAnnotation");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argannotation = @(annotation.hash);
  HEAP[argannotation] = annotation;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewViewForAnnotation"
              arguments:@{}
                 result:^(id result) {}]; // 由于结果是异步返回, 这里用不上, 所以就不生成代码了
  
  // 由于flutter无法同步调用method channel, 所以暂不支持有返回值的回调方法
  // 相关issue https://github.com/flutter/flutter/issues/28310
  NSLog(@"暂不支持有返回值的回调方法");
  
  ////////////////////////////如果需要手写代码, 请写在这里/////////////////////////////
  
  ////////////////////////////////////////////////////////////////////////////////
  
  return nil;
}

- (void)mapView : (MAMapView*)mapView didAddAnnotationViews: (NSArray*)views
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewDidAddAnnotationViews");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // list callback arg
  NSMutableArray<NSNumber*>* argviews = [NSMutableArray arrayWithCapacity:views.count];
  for (int i = 0; i < views.count; i++) {
      NSObject* item = ((NSObject*) [views objectAtIndex:i]);
      // return to dart side data
      argviews[i] = @(item.hash);
      // add to HEAP
      HEAP[@(item.hash)] = item;
  }

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidAddAnnotationViews" arguments:@{@"mapView": argmapView, @"views": argviews}];
  
}

- (void)mapView : (MAMapView*)mapView didSelectAnnotationView: (MAAnnotationView*)view
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewDidSelectAnnotationView");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argview = @(view.hash);
  HEAP[argview] = view;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidSelectAnnotationView" arguments:@{@"mapView": argmapView, @"view": argview}];
  
}

- (void)mapView : (MAMapView*)mapView didDeselectAnnotationView: (MAAnnotationView*)view
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewDidDeselectAnnotationView");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argview = @(view.hash);
  HEAP[argview] = view;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidDeselectAnnotationView" arguments:@{@"mapView": argmapView, @"view": argview}];
  
}

- (void)mapViewWillStartLocatingUser : (MAMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewWillStartLocatingUser");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewWillStartLocatingUser" arguments:@{@"mapView": argmapView}];
  
}

- (void)mapViewDidStopLocatingUser : (MAMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewDidStopLocatingUser");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidStopLocatingUser" arguments:@{@"mapView": argmapView}];
  
}

- (void)mapView : (MAMapView*)mapView didUpdateUserLocation: (MAUserLocation*)userLocation updatingLocation: (BOOL)updatingLocation
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewDidUpdateUserLocationupdatingLocation");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* arguserLocation = @(userLocation.hash);
  HEAP[arguserLocation] = userLocation;
  // primitive callback arg
  NSNumber* argupdatingLocation = @(updatingLocation);

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidUpdateUserLocationupdatingLocation" arguments:@{@"mapView": argmapView, @"userLocation": arguserLocation, @"updatingLocation": argupdatingLocation}];
  
}

- (void)mapView : (MAMapView*)mapView didFailToLocateUserWithError: (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewDidFailToLocateUserWithError");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argerror = @(error.hash);
  HEAP[argerror] = error;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidFailToLocateUserWithError" arguments:@{@"mapView": argmapView, @"error": argerror}];
  
}

- (void)mapView : (MAMapView*)mapView annotationView: (MAAnnotationView*)view didChangeDragState: (MAAnnotationViewDragState)newState fromOldState: (MAAnnotationViewDragState)oldState
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewAnnotationViewdidChangeDragStatefromOldState");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argview = @(view.hash);
  HEAP[argview] = view;
  // enum callback arg
  NSNumber* argnewState = @((NSInteger) newState);
  // enum callback arg
  NSNumber* argoldState = @((NSInteger) oldState);

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewAnnotationViewdidChangeDragStatefromOldState" arguments:@{@"mapView": argmapView, @"view": argview, @"newState": argnewState, @"oldState": argoldState}];
  
}

- (MAOverlayRenderer*)mapView : (MAMapView*)mapView rendererForOverlay: (id<MAOverlay>)overlay
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewRendererForOverlay");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argoverlay = @(overlay.hash);
  HEAP[argoverlay] = overlay;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewRendererForOverlay"
              arguments:@{}
                 result:^(id result) {}]; // 由于结果是异步返回, 这里用不上, 所以就不生成代码了
  
  // 由于flutter无法同步调用method channel, 所以暂不支持有返回值的回调方法
  // 相关issue https://github.com/flutter/flutter/issues/28310
  NSLog(@"暂不支持有返回值的回调方法");
  
  ////////////////////////////如果需要手写代码, 请写在这里/////////////////////////////
  
  ////////////////////////////////////////////////////////////////////////////////
  
  return nil;
}

- (void)mapView : (MAMapView*)mapView didAddOverlayRenderers: (NSArray*)overlayRenderers
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewDidAddOverlayRenderers");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // list callback arg
  NSMutableArray<NSNumber*>* argoverlayRenderers = [NSMutableArray arrayWithCapacity:overlayRenderers.count];
  for (int i = 0; i < overlayRenderers.count; i++) {
      NSObject* item = ((NSObject*) [overlayRenderers objectAtIndex:i]);
      // return to dart side data
      argoverlayRenderers[i] = @(item.hash);
      // add to HEAP
      HEAP[@(item.hash)] = item;
  }

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidAddOverlayRenderers" arguments:@{@"mapView": argmapView, @"overlayRenderers": argoverlayRenderers}];
  
}

- (void)mapView : (MAMapView*)mapView annotationView: (MAAnnotationView*)view calloutAccessoryControlTapped: (UIControl*)control
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewAnnotationViewcalloutAccessoryControlTapped");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argview = @(view.hash);
  HEAP[argview] = view;
  // ref callback arg
  NSNumber* argcontrol = @(control.hash);
  HEAP[argcontrol] = control;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewAnnotationViewcalloutAccessoryControlTapped" arguments:@{@"mapView": argmapView, @"view": argview, @"control": argcontrol}];
  
}

- (void)mapView : (MAMapView*)mapView didAnnotationViewCalloutTapped: (MAAnnotationView*)view
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewDidAnnotationViewCalloutTapped");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argview = @(view.hash);
  HEAP[argview] = view;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidAnnotationViewCalloutTapped" arguments:@{@"mapView": argmapView, @"view": argview}];
  
}

- (void)mapView : (MAMapView*)mapView didAnnotationViewTapped: (MAAnnotationView*)view
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewDidAnnotationViewTapped");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argview = @(view.hash);
  HEAP[argview] = view;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidAnnotationViewTapped" arguments:@{@"mapView": argmapView, @"view": argview}];
  
}

- (void)mapView : (MAMapView*)mapView didChangeUserTrackingMode: (MAUserTrackingMode)mode animated: (BOOL)animated
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewDidChangeUserTrackingModeanimated");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // enum callback arg
  NSNumber* argmode = @((NSInteger) mode);
  // primitive callback arg
  NSNumber* arganimated = @(animated);

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidChangeUserTrackingModeanimated" arguments:@{@"mapView": argmapView, @"mode": argmode, @"animated": arganimated}];
  
}

- (void)mapView : (MAMapView*)mapView didChangeOpenGLESDisabled: (BOOL)openGLESDisabled
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewDidChangeOpenGLESDisabled");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // primitive callback arg
  NSNumber* argopenGLESDisabled = @(openGLESDisabled);

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidChangeOpenGLESDisabled" arguments:@{@"mapView": argmapView, @"openGLESDisabled": argopenGLESDisabled}];
  
}

- (void)mapView : (MAMapView*)mapView didTouchPois: (NSArray*)pois
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewDidTouchPois");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // list callback arg
  NSMutableArray<NSNumber*>* argpois = [NSMutableArray arrayWithCapacity:pois.count];
  for (int i = 0; i < pois.count; i++) {
      NSObject* item = ((NSObject*) [pois objectAtIndex:i]);
      // return to dart side data
      argpois[i] = @(item.hash);
      // add to HEAP
      HEAP[@(item.hash)] = item;
  }

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidTouchPois" arguments:@{@"mapView": argmapView, @"pois": argpois}];
  
}

- (void)mapView : (MAMapView*)mapView didSingleTappedAtCoordinate: (CLLocationCoordinate2D)coordinate
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewDidSingleTappedAtCoordinate");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // struct callback arg
  NSValue* coordinateValue = [NSValue value:&coordinate withObjCType:@encode(CLLocationCoordinate2D)];
  NSNumber* argcoordinate = @(coordinateValue.hash);
  HEAP[argcoordinate] = coordinateValue;
  

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidSingleTappedAtCoordinate" arguments:@{@"mapView": argmapView, @"coordinate": argcoordinate}];
  
}

- (void)mapView : (MAMapView*)mapView didLongPressedAtCoordinate: (CLLocationCoordinate2D)coordinate
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewDidLongPressedAtCoordinate");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // struct callback arg
  NSValue* coordinateValue = [NSValue value:&coordinate withObjCType:@encode(CLLocationCoordinate2D)];
  NSNumber* argcoordinate = @(coordinateValue.hash);
  HEAP[argcoordinate] = coordinateValue;
  

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidLongPressedAtCoordinate" arguments:@{@"mapView": argmapView, @"coordinate": argcoordinate}];
  
}

- (void)mapInitComplete : (MAMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapInitComplete");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapInitComplete" arguments:@{@"mapView": argmapView}];
  
}

- (void)mapView : (MAMapView*)mapView didIndoorMapShowed: (MAIndoorInfo*)indoorInfo
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewDidIndoorMapShowed");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argindoorInfo = @(indoorInfo.hash);
  HEAP[argindoorInfo] = indoorInfo;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidIndoorMapShowed" arguments:@{@"mapView": argmapView, @"indoorInfo": argindoorInfo}];
  
}

- (void)mapView : (MAMapView*)mapView didIndoorMapFloorIndexChanged: (MAIndoorInfo*)indoorInfo
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewDidIndoorMapFloorIndexChanged");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argindoorInfo = @(indoorInfo.hash);
  HEAP[argindoorInfo] = indoorInfo;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidIndoorMapFloorIndexChanged" arguments:@{@"mapView": argmapView, @"indoorInfo": argindoorInfo}];
  
}

- (void)mapView : (MAMapView*)mapView didIndoorMapHidden: (MAIndoorInfo*)indoorInfo
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::mapViewDidIndoorMapHidden");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // ref callback arg
  NSNumber* argindoorInfo = @(indoorInfo.hash);
  HEAP[argindoorInfo] = indoorInfo;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidIndoorMapHidden" arguments:@{@"mapView": argmapView, @"indoorInfo": argindoorInfo}];
  
}

- (void)offlineDataWillReload : (MAMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::offlineDataWillReload");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::offlineDataWillReload" arguments:@{@"mapView": argmapView}];
  
}

- (void)offlineDataDidReload : (MAMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];
  // print log
  if (enableLog) {
    NSLog(@"MAMapViewDelegate::offlineDataDidReload");
  }

  // convert to jsonable arg
  // ref callback arg
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::offlineDataDidReload" arguments:@{@"mapView": argmapView}];
  
}


@end