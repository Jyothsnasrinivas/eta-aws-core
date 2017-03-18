module AWS.Core.Http where

import Java
import Java.IO
import Java.Net
import AWS.Core.Types

-- Start com.amazonaws.http.HttpMethodName

data {-# CLASS "com.amazonaws.http.HttpMethodName" #-} HttpMethodName = HttpMethodName (Object# HttpMethodName)
  deriving Class

foreign import java unsafe "@static @field com.amazonaws.http.HttpMethodName.DELETE"
  hmnDELETE :: HttpMethodName

foreign import java unsafe "@static @field com.amazonaws.http.HttpMethodName.GET"
  hmnGET :: HttpMethodName

foreign import java unsafe "@static @field com.amazonaws.http.HttpMethodName.HEAD"
  hmnHEAD :: HttpMethodName

foreign import java unsafe "@static @field com.amazonaws.http.HttpMethodName.OPTIONS"
  hmnOPTIONS :: HttpMethodName

foreign import java unsafe "@static @field com.amazonaws.http.HttpMethodName.PATCH"
  hmnPATCH :: HttpMethodName

foreign import java unsafe "@static @field com.amazonaws.http.HttpMethodName.POST"
  hmnPOST :: HttpMethodName

foreign import java unsafe "@static @field com.amazonaws.http.HttpMethodName.PUT"
  hmnPUT :: HttpMethodName

-- End com.amazonaws.http.HttpMethodName

-- Start com.amazonaws.http.SdkHttpMetadata

data {-# CLASS "com.amazonaws.http.SdkHttpMetadata" #-} SdkHttpMetadata = SdkHttpMetadata (Object# SdkHttpMetadata)
  deriving Class

foreign import java unsafe getHttpHeaders :: Java SdkHttpMetadata (Map JString JString)

foreign import java unsafe getHttpStatusCode :: Java SdkHttpMetadata Int
