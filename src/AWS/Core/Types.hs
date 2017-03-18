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

-- Start com.amazonaws.SignableRequest

data {-# CLASS "com.amazonaws.SignableRequest" #-} SignableRequest t = SignableRequest (Object# (SignableRequest t))
  deriving Class

foreign import java unsafe "@interface addHeader" addHeader :: (t <: Object, a <: SignableRequest t)
  => String -> String -> Java a ()

foreign import java unsafe "@interface addParameter" addParameter :: (t <: Object, a <: SignableRequest t)
  => String -> String -> Java a ()

foreign import java unsafe "@interface setContent" setContent :: (t <: Object, a <: SignableRequest t)
  => InputStream Java a ()

-- End com.amazonaws.SignableRequest

-- Start com.amazonaws.Request

data {-# CLASS "com.amazonaws.Request" #-} Request t = Request (Object# (Request t))
  deriving Class

foreign import java unsafe "@interface addHandlerContext"
  addHandlerContext :: (t <: Object, x <: Object, a <: Request t) =>
    HandlerContextKey x -> x -> Java a x

foreign import java unsafe "@interface addParameters"
  addParameters :: (t <: Object, a <: Request t) => String -> List String -> Java a ()

foreign import java unsafe "@interface getAWSRequestMetrics"
  getAWSRequestMetrics :: (t <: Object, a <: Request t) => Java a AWSRequestMetrics

foreign import java unsafe "@interface addHandlerContext"
  addHandlerContext2 :: (t <: Object, x <: Object, a <: Request t) =>
    HandlerContextKey x -> Java a x

foreign import java unsafe "@interface getOriginalRequest"
  getOriginalRequest :: (t <: Object, a <: Request t) => Java a AWSWebServiceRequest

foreign import java unsafe "@interface getServiceName"
  getServiceName :: (t <: Object, a <: Request t) => Java a String

foreign import java unsafe "@interface setAWSRequestMetrics"
  setAWSRequestMetrics :: (t <: Object, a <: Request t) => AWSRequestMetrics -> Java a ()

foreign import java unsafe "@interface setHeaders"
  setHeaders :: (t <: Object, a <: Request t) => Map JString JString -> Java a ()

foreign import java unsafe "@interface setHttpMethod"
  setHttpMethod :: (t <: Object, a <: Request t) => HttpMethodName -> Java a ()

foreign import java unsafe "@interface setParameters"
  setParameters :: (t <: Object, a <: Request t) => Map JString (List JString) -> Java a ()

foreign import java unsafe "@interface setResourcePath"
  setResourcePath :: (t <: Object, a <: Request t) => String -> Java a ()

foreign import java unsafe "@interface setTimeOffset"
  setTimeOffset :: (t <: Object, a <: Request t) => Int -> Java a ()

foreign import java unsafe "@interface withParameter"
  withParameter :: (t <: Object, a <: Request t) => String -> String -> Java a (Request t)

foreign import java unsafe "@interface withTimeOffset"
  withTimeOffset :: (t <: Object, a <: Request t) => Int -> Java a (Request t)
