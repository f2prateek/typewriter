/**
* This client was automatically generated by Segment Typewriter. ** Do Not Edit **
*/
package com.segment.generated;

import java.util.*;
import com.segment.analytics.Properties;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class OptionalArrayWithPropertiesItem extends Serializable {
  private Properties properties;

  
  private OptionalArrayWithPropertiesItem(Properties properties) {
    this.properties = properties;
	}

  protected Properties toProperties() {
    return properties;
	}
  

  /**
  * Builder for {@link OptionalArrayWithPropertiesItem}
  */
  public static class Builder {
    private Properties properties;

    /**
    * Builder for {@link OptionalArrayWithPropertiesItem}
    */
    public Builder() {
      properties = new Properties();
    }


    /**
     * Optional any property
     */
    public Builder optionalAny(final @Nullable Object optionalAny) {
      properties.putValue("optional any", optionalAny);
      return this;
    } 
    

    /**
     * Optional array property
     */
    public Builder optionalArray(final @Nullable List<Object> optionalArray) {
      List<?> p = ArraySerializer.serialize(optionalArray);
      properties.putValue("optional array", p);
      return this;
    } 
    

    /**
     * Optional boolean property
     */
    public Builder optionalBoolean(final @Nullable Boolean optionalBoolean) {
      properties.putValue("optional boolean", optionalBoolean);
      return this;
    } 
    

    /**
     * Optional integer property
     */
    public Builder optionalInt(final @Nullable Long optionalInt) {
      properties.putValue("optional int", optionalInt);
      return this;
    } 
    

    /**
     * Optional number property
     */
    public Builder optionalNumber(final @Nullable Double optionalNumber) {
      properties.putValue("optional number", optionalNumber);
      return this;
    } 
    

    /**
     * Optional object property
     */
    public Builder optionalObject(final @Nullable Object optionalObject) {
      properties.putValue("optional object", optionalObject);
      return this;
    } 
    

    /**
     * Optional string property
     */
    public Builder optionalString(final @Nullable String optionalString) {
      properties.putValue("optional string", optionalString);
      return this;
    } 
    

    /**
     * Optional string property with a regex conditional
     */
    public Builder optionalStringWithRegex(final @Nullable String optionalStringWithRegex) {
      properties.putValue("optional string with regex", optionalStringWithRegex);
      return this;
    } 
    

    /**
    * Build an instance of {@link OptionalArrayWithPropertiesItem}
    */
    public OptionalArrayWithPropertiesItem build() {
      return new OptionalArrayWithPropertiesItem(properties);
    }
  }
}