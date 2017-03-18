module AWS.Core.Types where

import Java
import Java.IO
import Java.Net

-- Start com.amazonaws.DnsResolver

data {-# CLASS "com.amazonaws.DnsResolver" #-} DnsResolver = DnsResolver (Object# DnsResolver)
  deriving Class

data {-# CLASS "java.net.InetAddress[]" #-} InetAddressArray = InetAddressArray (Object# InetAddressArray)
  deriving Class

instance JArray InetAddress InetAddressArray

foreign import java unsafe "@interface resolve" resolve :: Java DnsResolver InetAddressArray

-- Start com.amazonaws.DnsResolver

-- Start com.amazonaws.ImmtableRequest

data {-# CLASS "com.amazonaws.ImmutableRequest" #-} ImmutableRequest t = ImmutableRequest (Object# (ImmutableRequest t))
  deriving Class

foreign import java unsafe "@interface getContent" getContent :: (t <: Object)
  => Java (ImmutableRequest t) InputStream

foreign import java unsafe "@interface getContentUnwrapped" getContentUnwrapped :: (t <: Object)
  => Java (ImmutableRequest t) InputStream

-- foreign import java unsafe "@interface getEndpoint" getEndpoint :: (t <: Object)
--   => Java (ImmutableRequest t) URI

foreign import java unsafe "@interface getHeaders" getHeaders :: (t <: Object)
  => Java (ImmutableRequest t) (Map JString JString)

foreign import java unsafe "@interface getHttpMethod" getHttpMethod :: (t <: Object)
  => Java (ImmutableRequest t) HttpMethodName

foreign import java unsafe "@interface getOriginalRequestObject" getOriginalRequestObject :: (t <: Object)
  => Java (ImmutableRequest t) Object

foreign import java unsafe "@interface getParameters" getParameters :: (t <: Object)
  => Java (ImmutableRequest t) (Map JString (List JString))

foreign import java unsafe "@interface getReadLimitInfo" getReadLimitInfo :: (t <: Object)
  => Java (ImmutableRequest t) ReadLimitInfo

foreign import java unsafe "@interface getResourcePath" getResourcePath :: (t <: Object)
  => Java (ImmutableRequest t) String

foreign import java unsafe "@interface getTimeOffset" getTimeOffset :: (t <: Object)
  => Java (ImmutableRequest t) Int

-- End com.amazonaws.ImmutableRequest

-- Start com.amazonaws.ReadLimitInfo

data {-# CLASS "com.amazonaws.ReadLimitInfo" #-} ReadLimitInfo = ReadLimitInfo (Object# ReadLimitInfo)
  deriving Class

foreign import java unsafe getReadLimit :: Java ReadLimitInfo Int

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

-- Start com.amazonaws.http.HttpMethodName

data {-# CLASS "com.amazonaws.http.SignableRequest" #-} SignableRequest t = SignableRequest (Object# SignableRequest t)
  deriving Class

foreign import java unsafe "@interface addHeader" addHeader :: (t <: Object, a <: SignableRequest t)
  => String -> String -> Java a ()

foreign import java unsafe "@interface addParameter" addParameter :: (t <: Object, a <: SignableRequest t)
  => String -> String -> Java a ()

foreign import java unsafe "@interface setContent" setContent :: (t <: Object, a <: SignableRequest t)
  => InputStream Java a ()
