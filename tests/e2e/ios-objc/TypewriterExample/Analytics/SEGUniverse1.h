/**
 * This client was automatically generated by Segment Typewriter. ** Do Not Edit **
 */

#import <Foundation/Foundation.h>
#import <Analytics/SEGSerializableValue.h>
#import "SEGTypewriterSerializable.h"
#import "SEGTypewriterUtils.h"
#import "SEGOccupantsItem1.h"

@interface SEGUniverse1 : NSObject<SEGTypewriterSerializable>

/// The common name of this universe.
@property (strong, nonatomic, nonnull) NSString *name;
/// The most important occupants in this universe.
@property (strong, nonatomic, nonnull) NSArray<SEGOccupantsItem1 *> *occupants;

+(nonnull instancetype) initWithName:(nonnull NSString *)name
occupants:(nonnull NSArray<SEGOccupantsItem1 *> *)occupants;

-(nonnull SERIALIZABLE_DICT) toDictionary;

@end
