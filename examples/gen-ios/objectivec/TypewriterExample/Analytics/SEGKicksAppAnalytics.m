// This code is auto-generated by Segment Typewriter. Do not edit.
#import "SEGKicksAppAnalytics.h"

#pragma mark - Helper functions

#define λ(decl, expr) (^(decl) { return (expr); })

static id NSNullify(id _Nullable x) {
    return (x == nil || x == NSNull.null) ? NSNull.null : x;
}

static NSDictionary<NSString *, id> *_Nullable addTypewriterContextFields(NSDictionary<NSString *, id> *_Nullable options) {
    options = options ?: @{};
    NSDictionary<NSString *, id> *customContext = options[@"context"] ?: @{};
    NSDictionary<NSString *, id> *typewriterContext = @{
                                                        @"typewriter": @{
                                                                @"name": @"gen-ios",
                                                                @"version": @"5.1.6"
                                                                }
                                                        };
    NSMutableDictionary *context = [NSMutableDictionary dictionaryWithCapacity:customContext.count + typewriterContext.count];
    [context addEntriesFromDictionary:customContext];
    [context addEntriesFromDictionary:typewriterContext];
    
    NSMutableDictionary *newOptions = [NSMutableDictionary dictionaryWithCapacity:options.count + 1];
    [newOptions addEntriesFromDictionary:options];
    [newOptions addEntriesFromDictionary:@{
                                           @"context": context
                                           }];
    return newOptions;
}

NS_ASSUME_NONNULL_BEGIN

static id prune(NSDictionary *dict) {
    NSMutableDictionary *prunedDict = [dict mutableCopy];
    NSArray *keysForNullValues = [dict allKeysForObject:[NSNull null]];
    [prunedDict removeObjectsForKeys:keysForNullValues];
    return prunedDict;
}

static id map(id collection, id (^f)(id value)) {
    id result = nil;
    if ([collection isKindOfClass:NSArray.class]) {
        result = [NSMutableArray arrayWithCapacity:[collection count]];
        for (id x in collection) [result addObject:f(x)];
    } else if ([collection isKindOfClass:NSDictionary.class]) {
        result = [NSMutableDictionary dictionaryWithCapacity:[collection count]];
        for (id key in collection) [result setObject:f([collection objectForKey:key]) forKey:key];
    }
    return result;
}

#pragma mark - Private interfaces

@interface SEGOrderCompleted (JSONConversion)
- (NSDictionary *)JSONDictionary;
@end

@interface SEGProduct (JSONConversion)
- (NSDictionary *)JSONDictionary;
@end

@interface SEGKicksAppAnalytics ()
@property (nonatomic, nullable) SEGAnalytics *analytics;
@end

#pragma mark - JSON Serialization

@implementation SEGOrderCompleted
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"affiliation": @"affiliation",
        @"checkout_id": @"checkoutID",
        @"coupon": @"coupon",
        @"currency": @"currency",
        @"discount": @"discount",
        @"order_id": @"orderID",
        @"products": @"products",
        @"revenue": @"revenue",
        @"shipping": @"shipping",
        @"tax": @"tax",
        @"total": @"total",
    };
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    id resolved = SEGOrderCompleted.properties[key];
    if (resolved) [super setValue:value forKey:resolved];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:SEGOrderCompleted.properties.allValues] mutableCopy];

    for (id jsonName in SEGOrderCompleted.properties) {
        id propertyName = SEGOrderCompleted.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    [dict addEntriesFromDictionary:@{
        @"products": map(_products, λ(id x, [x JSONDictionary])),
    }];

    return prune(dict);
}
@end

@implementation SEGOrderCompletedBuilder
+ (SEGOrderCompleted *)initWithBlock:(SEGOrderCompletedBuilderBlock)block
{
    NSParameterAssert(block);

    SEGOrderCompletedBuilder *builder = [[SEGOrderCompletedBuilder alloc] init];
    block(builder);

    if (builder.orderID == NULL) {
        @throw [NSException exceptionWithName:@"Missing Required Property" reason:@"SEGOrderCompleted is missing a required property: orderID" userInfo:NULL];
    }

    SEGOrderCompleted *orderCompleted = [[SEGOrderCompleted alloc] init];
    orderCompleted.affiliation = builder.affiliation;
    orderCompleted.checkoutID = builder.checkoutID;
    orderCompleted.coupon = builder.coupon;
    orderCompleted.currency = builder.currency;
    orderCompleted.discount = builder.discount;
    orderCompleted.orderID = builder.orderID;
    orderCompleted.products = builder.products;
    orderCompleted.revenue = builder.revenue;
    orderCompleted.shipping = builder.shipping;
    orderCompleted.tax = builder.tax;
    orderCompleted.total = builder.total;
    return orderCompleted;
}
@end

@implementation SEGProduct
+ (NSDictionary<NSString *, NSString *> *)properties
{
    static NSDictionary<NSString *, NSString *> *properties;
    return properties = properties ? properties : @{
        @"brand": @"brand",
        @"category": @"category",
        @"coupon": @"coupon",
        @"image_url": @"imageURL",
        @"name": @"name",
        @"position": @"position",
        @"price": @"price",
        @"product_id": @"productID",
        @"quantity": @"quantity",
        @"sku": @"sku",
        @"url": @"url",
        @"variant": @"variant",
    };
}

- (void)setValue:(nullable id)value forKey:(NSString *)key
{
    id resolved = SEGProduct.properties[key];
    if (resolved) [super setValue:value forKey:resolved];
}

- (NSDictionary *)JSONDictionary
{
    id dict = [[self dictionaryWithValuesForKeys:SEGProduct.properties.allValues] mutableCopy];

    for (id jsonName in SEGProduct.properties) {
        id propertyName = SEGProduct.properties[jsonName];
        if (![jsonName isEqualToString:propertyName]) {
            dict[jsonName] = dict[propertyName];
            [dict removeObjectForKey:propertyName];
        }
    }

    return prune(dict);
}
@end

@implementation SEGProductBuilder
+ (SEGProduct *)initWithBlock:(SEGProductBuilderBlock)block
{
    NSParameterAssert(block);

    SEGProductBuilder *builder = [[SEGProductBuilder alloc] init];
    block(builder);

    SEGProduct *product = [[SEGProduct alloc] init];
    product.brand = builder.brand;
    product.category = builder.category;
    product.coupon = builder.coupon;
    product.imageURL = builder.imageURL;
    product.name = builder.name;
    product.position = builder.position;
    product.price = builder.price;
    product.productID = builder.productID;
    product.quantity = builder.quantity;
    product.sku = builder.sku;
    product.url = builder.url;
    product.variant = builder.variant;
    return product;
}
@end

@implementation SEGKicksAppAnalytics
- (instancetype)initWithAnalytics:(SEGAnalytics *)analytics
{
    self = [super init];
    if (self) {
        _analytics = analytics;
    }
    return self;
}

- (void)orderCompleted:(SEGOrderCompleted *)props
{
    [self orderCompleted:props withOptions:@{}];
}
- (void)orderCompleted:(SEGOrderCompleted *)props withOptions:(NSDictionary<NSString *, id> *_Nullable)options
{
    [self.analytics track:@"Order Completed" properties:[props JSONDictionary] options:addTypewriterContextFields(options)];
}
@end

NS_ASSUME_NONNULL_END
