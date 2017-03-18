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
  getOriginalRequest :: (t <: Object, a <: Request t) => Java a AmazonWebServiceRequest

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

-- End com.amazonaws.Request

-- Start com.amazonaws.AmazonWebServiceRequest

data {-# CLASS "com.amazonaws.AmazonWebServiceRequest" #-} AmazonWebServiceRequest  = AmazonWebServiceRequest (Object# AmazonWebServiceRequest)
  deriving Class

foreign import java unsafe clone :: Java AmazonWebServiceRequest AmazonWebServiceRequest

foreign import java unsafe getCloneRoot :: Java AmazonWebServiceRequest AmazonWebServiceRequest

foreign import java unsafe getCloneSource :: Java AmazonWebServiceRequest AmazonWebServiceRequest

foreign import java unsafe getCustomQueryParameters :: Java AmazonWebServiceRequest (Map JString (List JString))

foreign import java unsafe getCustomRequestHeaders :: Java AmazonWebServiceRequest (Map JString JString)

foreign import java unsafe getGeneralProgressListener :: Java AmazonWebServiceRequest ProgressListener

foreign import java unsafe getReadLimit :: Java AmazonWebServiceRequest Int

foreign import java unsafe getRequestClientOptions :: Java AmazonWebServiceRequest RequestClientOptions

foreign import java unsafe getRequestCredentials :: Java AmazonWebServiceRequest AWSCredentials

foreign import java unsafe getRequestCredentialsProvider :: Java AmazonWebServiceRequest AWSCredentialsProvider

foreign import java unsafe getRequestMetricCollector :: Java AmazonWebServiceRequest RequestMetricCollector

foreign import java unsafe getSdkRequestTimeout :: Java AmazonWebServiceRequest JInteger

foreign import java unsafe getSdkClientExecutionTimeout :: Java AmazonWebServiceRequest JInteger

foreign import java unsafe putCustomQueryParameter :: String -> String -> Java AmazonWebServiceRequest ()

foreign import java unsafe putCustomRequestHeader :: String -> String -> Java AmazonWebServiceRequest String

foreign import java unsafe setGeneralProgressListener :: ProgressListener -> Java AmazonWebServiceRequest ()

foreign import java unsafe setRequestCredentials :: AWSCredentials -> Java AmazonWebServiceRequest ()

foreign import java unsafe setRequestCredentialsProvider :: AWSCredentialsProvider -> Java AmazonWebServiceRequest ()

foreign import java unsafe setRequestMetricCollector :: RequestMetricCollector -> Java AmazonWebServiceRequest ()

foreign import java unsafe setSdkClientExecutionTimeout :: Int -> Java AmazonWebServiceRequest ()

foreign import java unsafe setSdkRequestTimeout :: Int -> Java AmazonWebServiceRequest ()

foreign import java unsafe withGeneralProgressListener :: (t <: AmazonWebServiceRequest)
  => ProgressListener -> Java AmazonWebServiceRequest t

foreign import java unsafe withRequestMetricCollector :: (t <: AmazonWebServiceRequest)
  => RequestMetricCollector -> Java AmazonWebServiceRequest t

foreign import java unsafe withSdkClientExecutionTimeout :: (t <: AmazonWebServiceRequest)
  => Int -> Java AmazonWebServiceRequest t

foreign import java unsafe withSdkRequestTimeout :: (t <: AmazonWebServiceRequest)
  => Int -> Java AmazonWebServiceRequest t

-- End com.amazonaws.AmazonWebServiceRequest

-- Start com.amazonaws.RequestClientOptions

data {-# CLASS "com.amazonaws.RequestClientOptions" #-} RequestClientOptions = RequestClientOptions (Object# RequestClientOptions)
  deriving Class

foreign import java unsafe appendUserAgent :: String -> Java RequestClientOptions ()

foreign import java unsafe getClientMarker :: RequestClientOptions.Marker -> Java RequestClientOptions String

foreign import java unsafe "getReadLimit" getReadLimitRCO :: Java RequestClientOptions Int

foreign import java unsafe putClientMarker :: RequestClientOptions.Marker -> String -> Java RequestClientOptions ()

foreign import java unsafe setReadLimit :: Int -> Java RequestClientOptions ()

-- End com.amazonaws.RequestClientOptions

-- Start com.amazonaws.RequestClientOptions.Marker

data {-# CLASS "com.amazonaws.RequestClientOptions$Marker" #-} RequestClientOptionsMarker = RequestClientOptionsMarker (Object# RequestClientOptionsMarker)
  deriving Class

foreign import java unsafe "@static @field java.math.RequestClientOptions$Marker.USER_AGENT" rcoUSER_AGENT :: RequestClientOptionsMarker

-- End com.amazonaws.RequestClientOptions.Marker

-- Start com.amazonaws.AmazonWebServiceClient

data {-# CLASS "com.amazonaws.AmazonWebServiceClient" #-} AmazonWebServiceClient = AmazonWebServiceClient (Object# AmazonWebServiceClient)
  deriving Class

foreign import java unsafe addRequestHandler :: (b <: AmazonWebServiceClient)
  => RequestHandler -> Java b ()

foreign import java unsafe "addRequestHandler" addRequestHandler2 :: (b <: AmazonWebServiceClient)
  => RequestHandler2 -> Java b ()

foreign import java unsafe configureRegion :: (b <: AmazonWebServiceClient)
  => Regions -> Java b ()

foreign import java unsafe getEndpointPrefix :: (b <: AmazonWebServiceClient) => Java b String

foreign import java unsafe getRequestMetricsCollector :: (b <: AmazonWebServiceClient) => Java b RequestMetricCollector

foreign import java unsafe getServiceName :: (b <: AmazonWebServiceClient) => Java b String

foreign import java unsafe getSignerByURI :: (b <: AmazonWebServiceClient) => URI -> Java b Signer

foreign import java unsafe getSignerRegionOverride :: (b <: AmazonWebServiceClient) => Java b String

foreign import java unsafe getTimeOffset :: (b <: AmazonWebServiceClient) => Java b Int

foreign import java unsafe makeImmutable :: (b <: AmazonWebServiceClient) => Java b ()

foreign import java unsafe setServiceNameIntern :: (b <: AmazonWebServiceClient)
  => String -> Java b ()

foreign import java unsafe setSignerRegionOverride :: (b <: AmazonWebServiceClient)
  => String -> Java b ()

foreign import java unsafe setTimeOffset :: (b <: AmazonWebServiceClient)
  => Int -> Java b ()

foreign import java unsafe shutdown :: (b <: AmazonWebServiceClient) => Java b ()

foreign import java unsafe withTimeOffset :: (b <: AmazonWebServiceClient)
  => Int -> Java b AmazonWebServiceClient

-- End com.amazonaws.AmazonWebServiceClient

-- Start java.lang.Exception

data {-# CLASS "java.lang.Exception" #-} Exception = Exception (Object# Exception)
  deriving Class

-- End java.lang.Exception

-- Start com.amazonaws.AmazonWebServiceResponse

data {-# CLASS "com.amazonaws.AmazonWebServiceResponse" #-} AmazonWebServiceResponse t = AmazonWebServiceResponse (Object# (AmazonWebServiceResponse t))
  deriving Class

foreign import java unsafe getRequestId :: (t <: Object) => Java (AmazonWebServiceResponse t) String

foreign import java unsafe getResponseMetadata :: (t <: Object) => Java (AmazonWebServiceResponse t) ResponseMetadata

foreign import java unsafe getResult :: (t <: Object) => Java (AmazonWebServiceResponse t) t

foreign import java unsafe setResponseMetadata :: (t <: Object) => ResponseMetadata -> Java (AmazonWebServiceResponse t) ()

foreign import java unsafe setResult :: (t <: Object) => t -> Java (AmazonWebServiceResponse t) ()

-- End com.amazonaws.AmazonWebServiceResponse

-- Start com.amazonaws.ResponseMetadata

data {-# CLASS "com.amazonaws.ResponseMetadata" #-} ResponseMetadata = ResponseMetadata (Object# ResponseMetadata)
  deriving Class

-- End com.amazonaws.ResponseMetadata

-- Start com.amazonaws.AmazonWebServiceResult

data {-# CLASS "com.amazonaws.AmazonWebServiceResult" #-} AmazonWebServiceResult t = AmazonWebServiceResult (Object# (AmazonWebServiceResult t))
  deriving Class

foreign import java unsafe getSdkHttpMetadata :: (t <: ResponseMetadata)
  => Java (AmazonWebServiceResult t) SdkHttpMetadata

foreign import java unsafe getSdkResponseMetadata :: (t <: ResponseMetadata)
  => Java (AmazonWebServiceResult t) t

foreign import java unsafe setSdkHttpMetadata :: (t <: ResponseMetadata)
  => SdkHttpMetadata -> Java (AmazonWebServiceResult t) (AmazonWebServiceResult t)

foreign import java unsafe setSdkResponseMetadata :: (t <: ResponseMetadata)
  => t -> Java (AmazonWebServiceResult t) (AmazonWebServiceResult t)

-- End com.amazonaws.AmazonWebServiceResult
