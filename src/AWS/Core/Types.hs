{-# LANGUAGE DataKinds, TypeFamilies #-}
module AWS.Core.Types where

import Java
import Java.IO
import Java.Net
import Java.Security

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
  => ImmutableRequest t -> InputStream

foreign import java unsafe "@interface getContentUnwrapped" getContentUnwrapped :: (t <: Object)
  => ImmutableRequest t -> InputStream

-- foreign import java unsafe "@interface getEndpoint" getEndpoint :: (t <: Object)
--   => ImmutableRequest t -> URI

foreign import java unsafe "@interface getHeaders" getHeaders :: (t <: Object)
  => ImmutableRequest t ->  (Map JString JString)

foreign import java unsafe "@interface getHttpMethod" getHttpMethod :: (t <: Object)
  => ImmutableRequest t -> HttpMethodName

foreign import java unsafe "@interface getOriginalRequestObject" getOriginalRequestObject :: (t <: Object)
  => ImmutableRequest t -> Object

foreign import java unsafe "@interface getParameters" getParameters :: (t <: Object)
  => ImmutableRequest t -> (Map JString (List JString))

foreign import java unsafe "@interface getReadLimitInfo" getReadLimitInfo :: (t <: Object)
  => ImmutableRequest t -> ReadLimitInfo

foreign import java unsafe "@interface getResourcePath" getResourcePath :: (t <: Object)
  => ImmutableRequest t -> String

foreign import java unsafe "@interface getTimeOffset" getTimeOffset :: (t <: Object)
  => ImmutableRequest t -> Int

-- End com.amazonaws.ImmutableRequest

-- Start com.amazonaws.ReadLimitInfo

data {-# CLASS "com.amazonaws.ReadLimitInfo" #-} ReadLimitInfo = ReadLimitInfo (Object# ReadLimitInfo)
  deriving Class

foreign import java unsafe getReadLimit :: (a <: ReadLimitInfo) => Java a Int

-- Start com.amazonaws.SignableRequest

data {-# CLASS "com.amazonaws.SignableRequest" #-} SignableRequest t = SignableRequest (Object# (SignableRequest t))
  deriving Class

foreign import java unsafe "@interface addHeader" addHeader :: (t <: Object, a <: SignableRequest t)
  => String -> String -> Java a ()

foreign import java unsafe "@interface addParameter" addParameter :: (t <: Object, a <: SignableRequest t)
  => String -> String -> Java a ()

foreign import java unsafe "@interface setContent" setContent :: (t <: Object, a <: SignableRequest t)
  => InputStream -> Java a ()

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

type instance Inherits AmazonWebServiceRequest = '[Object, ReadLimitInfo]

foreign import java unsafe clone :: Java AmazonWebServiceRequest AmazonWebServiceRequest

foreign import java unsafe getCloneRoot :: Java AmazonWebServiceRequest AmazonWebServiceRequest

foreign import java unsafe getCloneSource :: Java AmazonWebServiceRequest AmazonWebServiceRequest

foreign import java unsafe getCustomQueryParameters :: Java AmazonWebServiceRequest (Map JString (List JString))

foreign import java unsafe getCustomRequestHeaders :: Java AmazonWebServiceRequest (Map JString JString)

foreign import java unsafe getGeneralProgressListener :: Java AmazonWebServiceRequest ProgressListener

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

foreign import java unsafe getClientMarker :: Marker -> Java RequestClientOptions String

foreign import java unsafe "getReadLimit" getReadLimitRCO :: Java RequestClientOptions Int

foreign import java unsafe putClientMarker :: Marker -> String -> Java RequestClientOptions ()

foreign import java unsafe setReadLimit :: Int -> Java RequestClientOptions ()

-- End com.amazonaws.RequestClientOptions

-- Start com.amazonaws.RequestClientOptions.Marker

data {-# CLASS "com.amazonaws.RequestClientOptions$Marker" #-} Marker = Marker (Object# Marker)
  deriving Class

foreign import java unsafe "@static @field java.math.RequestClientOptions$Marker.USER_AGENT" rcoUSER_AGENT :: Marker

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

foreign import java unsafe "getServiceName" getServiceNameAWS :: (b <: AmazonWebServiceClient) => Java b String

foreign import java unsafe getSignerByURI :: (b <: AmazonWebServiceClient) => URI -> Java b Signer

foreign import java unsafe getSignerRegionOverride :: (b <: AmazonWebServiceClient) => Java b String

foreign import java unsafe "getTimeOffset" getTimeOffsetAWS :: (b <: AmazonWebServiceClient) => Java b Int

foreign import java unsafe makeImmutable :: (b <: AmazonWebServiceClient) => Java b ()

foreign import java unsafe setServiceNameIntern :: (b <: AmazonWebServiceClient)
  => String -> Java b ()

foreign import java unsafe setSignerRegionOverride :: (b <: AmazonWebServiceClient)
  => String -> Java b ()

foreign import java unsafe "setTimeOffset" setTimeOffsetAWS :: (b <: AmazonWebServiceClient)
  => Int -> Java b ()

foreign import java unsafe shutdown :: (b <: AmazonWebServiceClient) => Java b ()

foreign import java unsafe "withTimeOffset" withTimeOffsetAWS :: (b <: AmazonWebServiceClient)
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

-- Start com.amazonaws.ApacheHttClientConfig

data {-# CLASS "com.amazonaws.ApacheHttClientConfig" #-} ApacheHttClientConfig = ApacheHttClientConfig (Object# ApacheHttClientConfig)
  deriving Class

-- foreign import java unsafe getSslSocketFactory :: Java ApacheHttClientConfig ConnectionSocketFactory
--
-- foreign import java unsafe setSslSocketFactory :: ConnectionSocketFactory ->  Java ApacheHttClientConfig ()
--
-- foreign import java unsafe withSslSocketFactory :: ConnectionSocketFactory ->  Java ApacheHttClientConfig ApacheHttClientConfig

-- End com.amazonaws.ApacheHttClientConfig

-- Start com.amazonaws.ClientConfiguration

data {-# CLASS "com.amazonaws.ClientConfiguration" #-} ClientConfiguration = ClientConfiguration (Object# ClientConfiguration)
  deriving Class

foreign import java unsafe "addHeader" addHeaderCC :: String -> String -> Java ClientConfiguration ()

foreign import java unsafe getApacheHttpClientConfig :: Java ClientConfiguration ApacheHttClientConfig

foreign import java unsafe getCacheResponseMetadata :: Java ClientConfiguration Bool

foreign import java unsafe getClientExecutionTimeout :: Java ClientConfiguration Int

foreign import java unsafe getConnectionMaxIdleMillis :: Java ClientConfiguration Int64

foreign import java unsafe getConnectionTimeout :: Java ClientConfiguration Int

foreign import java unsafe getConnectionTTL :: Java ClientConfiguration Int64

foreign import java unsafe getDnsResolver :: Java ClientConfiguration DnsResolver

foreign import java unsafe "getHeaders" getHeadersCC :: Java ClientConfiguration (Map JString JString)

foreign import java unsafe getLocalAddress :: Java ClientConfiguration InetAddress

foreign import java unsafe getMaxConnections :: Java ClientConfiguration Int

foreign import java unsafe getMaxConsecutiveRetriesBeforeThrottling :: Java ClientConfiguration Int

foreign import java unsafe getMaxErrorRetryCC :: Java ClientConfiguration Int

foreign import java unsafe getNonProxyHosts :: Java ClientConfiguration String

foreign import java unsafe getProtocol :: Java ClientConfiguration Protocol

foreign import java unsafe getProxyDomain :: Java ClientConfiguration String

foreign import java unsafe getProxyHost :: Java ClientConfiguration String

foreign import java unsafe getProxyPassword :: Java ClientConfiguration String

foreign import java unsafe getProxyPort :: Java ClientConfiguration Int

foreign import java unsafe getProxyUsername :: Java ClientConfiguration String

foreign import java unsafe getProxyWorkstation :: Java ClientConfiguration String

foreign import java unsafe getRequestTimeout :: Java ClientConfiguration Int

foreign import java unsafe getResponseMetadataCacheSize :: Java ClientConfiguration Int

foreign import java unsafe getRetryPolicy :: Java ClientConfiguration RetryPolicy

foreign import java unsafe getSecureRandom :: Java ClientConfiguration SecureRandom

foreign import java unsafe getSignerOverride :: Java ClientConfiguration String

foreign import java unsafe getSocketBufferSizeHints :: Java ClientConfiguration JIntArray

foreign import java unsafe getSocketTimeout :: Java ClientConfiguration Int

foreign import java unsafe getUserAgentPrefix :: Java ClientConfiguration String

foreign import java unsafe getUserAgentSuffix :: Java ClientConfiguration String

foreign import java unsafe getValidateAfterInactivityMillis :: Java ClientConfiguration Int

foreign import java unsafe isPreemptiveBasicProxyAuth :: Java ClientConfiguration Bool

foreign import java unsafe isUseExpectContinue :: Java ClientConfiguration Bool

foreign import java unsafe setCacheResponseMetadata :: Bool -> Java ClientConfiguration ()

foreign import java unsafe setClientExecutionTimeout :: Int -> Java ClientConfiguration ()

foreign import java unsafe setConnectionMaxIdleMillis :: Int64 -> Java ClientConfiguration ()

foreign import java unsafe setConnectionTimeout :: Int -> Java ClientConfiguration ()

foreign import java unsafe setConnectionTTL :: Int64 -> Java ClientConfiguration ()

foreign import java unsafe setDnsResolver :: DnsResolver -> Java ClientConfiguration ()

foreign import java unsafe setLocalAddress :: InetAddress -> Java ClientConfiguration ()

foreign import java unsafe setMaxConnections :: Int -> Java ClientConfiguration ()

foreign import java unsafe setMaxConsecutiveRetriesBeforeThrottling ::
  Int -> Java ClientConfiguration ()

foreign import java unsafe setMaxErrorRetry :: Int -> Java ClientConfiguration ()

foreign import java unsafe setNonProxyHosts :: String -> Java ClientConfiguration ()

foreign import java unsafe setPreemptiveBasicProxyAuth :: Bool -> Java ClientConfiguration ()



foreign import java unsafe setProtocol :: Protocol -> Java ClientConfiguration ()

foreign import java unsafe setProxyDomain :: String -> Java ClientConfiguration ()

foreign import java unsafe setProxyHost :: String -> Java ClientConfiguration ()

foreign import java unsafe setProxyPassword :: String -> Java ClientConfiguration ()

foreign import java unsafe setProxyPort :: Int -> Java ClientConfiguration ()

foreign import java unsafe setProxyUsername :: String -> Java ClientConfiguration ()

foreign import java unsafe setProxyWorkstation :: String -> Java ClientConfiguration ()

foreign import java unsafe setRequestTimeout :: Int -> Java ClientConfiguration ()

foreign import java unsafe setResponseMetadataCacheSize :: Int -> Java ClientConfiguration ()

foreign import java unsafe setRetryPolicy :: RetryPolicy -> Java ClientConfiguration ()

foreign import java unsafe setSecureRandom :: SecureRandom -> Java ClientConfiguration ()

foreign import java unsafe setSignerOverride :: String -> Java ClientConfiguration ()

foreign import java unsafe setSocketBufferSizeHints :: Int -> Int -> Java ClientConfiguration ()

foreign import java unsafe setSocketTimeout :: Int -> Java ClientConfiguration ()

foreign import java unsafe setUseExpectContinue :: Bool -> Java ClientConfiguration ()

foreign import java unsafe setUseGzip :: Bool -> Java ClientConfiguration ()

foreign import java unsafe setUserAgentPrefix :: String -> Java ClientConfiguration ()

foreign import java unsafe setUserAgentSuffix :: String -> Java ClientConfiguration ()

foreign import java unsafe setUseReaper :: Bool -> Java ClientConfiguration ()

foreign import java unsafe setUseTcpKeepAlive :: Bool -> Java ClientConfiguration ()

foreign import java unsafe setUseThrottleRetries :: Bool -> Java ClientConfiguration ()

foreign import java unsafe setValidateAfterInactivityMillis :: Int -> Java ClientConfiguration ()

foreign import java unsafe useGzip :: Java ClientConfiguration Bool

foreign import java unsafe useReaper :: Java ClientConfiguration Bool

foreign import java unsafe useTcpKeepAlive :: Java ClientConfiguration Bool

foreign import java unsafe useThrottledRetries :: Java ClientConfiguration Bool

foreign import java unsafe withCacheResponseMetadata ::
  Bool -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withClientExecutionTimeout ::
  Int -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withConnectionMaxIdleMillis ::
  Int64 -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withConnectionTimeout ::
  Int -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withConnectionTTL ::
  Int64 -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withDnsResolver ::
  DnsResolver -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withGzip ::
  Bool -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withHeader ::
  String -> String -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withLocalAddress ::
  InetAddress -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withMaxConnections ::
  Int -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withMaxConsecutiveRetriesBeforeThrottling ::
  Int -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withMaxErrorRetry ::
  Int -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withNonProxyHosts ::
  String -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withPreemptiveBasicProxyAuth ::
  Bool -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withProtocol ::
  Protocol -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withProxyDomain ::
  String -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withProxyHost ::
  String -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withProxyPassword ::
  String -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withProxyPort ::
  Int -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withProxyUsername ::
  String -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withProxyWorkstation ::
  String -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withReaper ::
  Bool -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withRequestTimeout ::
  Int -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withResponseMetadataCacheSize ::
  Int -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withRetryPolicy ::
  RetryPolicy -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withSecureRandom ::
  SecureRandom -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withSignerOverride ::
  String -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withSocketBufferSizeHints ::
  Int -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withSocketTimeout ::
  Int -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withTcpKeepAlive ::
  Bool -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withThrottledRetries ::
  Bool -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withUseExpectContinue ::
  Bool -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withUserAgentPrefix ::
  String -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withUserAgentSuffix ::
  String -> Java ClientConfiguration ClientConfiguration

foreign import java unsafe withValidateAfterInactivityMillis ::
  Int -> Java ClientConfiguration ClientConfiguration

-- End com.amazonaws.ClientConfiguration

-- Start com.amazonaws.Protocol

data {-# CLASS "com.amazonaws.Protocol" #-} Protocol = Protocol (Object# Protocol)
  deriving Class

foreign import java unsafe "@static @field com.amazonaws.Protocol.HTTP" mkHTTP :: Protocol

foreign import java unsafe "@static @field com.amazonaws.Protocol.HTTPS" mkHTTPS :: Protocol

-- End com.amazonaws.Protocol

-- Start com.amazonaws.ClientConfigurationFactory

data {-# CLASS "com.amazonaws.ClientConfigurationFactory" #-} ClientConfigurationFactory = ClientConfigurationFactory (Object# ClientConfigurationFactory)
  deriving Class

foreign import java unsafe getConfig :: (b <: ClientConfigurationFactory) => Java b ClientConfiguration

-- End com.amazonaws.ClientConfigurationFactory

-- Start com.amazonaws.DefaultRequest

data {-# CLASS "com.amazonaws.DefaultRequest" #-} DefaultRequest t = DefaultRequest (Object# (DefaultRequest t))
  deriving Class

foreign import java unsafe
  "addHandlerContext" addHandlerContextHCK :: (t <: Object, x <: Object)
  => (HandlerContextKey x) -> x -> Java (DefaultRequest t) x

foreign import java unsafe "addHeader"
  addHeaderDR :: (t <: Object) => String -> String -> Java (DefaultRequest t) ()

foreign import java unsafe "addParameter"
  addParameterDR :: (t <: Object) => String -> String -> Java (DefaultRequest t) ()

foreign import java unsafe "addParameters"
  addParametersDR :: (t <: Object) => String -> List String -> Java (DefaultRequest t) ()

foreign import java unsafe "getAWSRequestMetrics"
  getAWSRequestMetricsDR :: (t <: Object) => Java (DefaultRequest t) AWSRequestMetrics

foreign import java unsafe "getContent"
  getContentDR :: (t <: Object) => Java (DefaultRequest t) InputStream

foreign import java unsafe "getContentUnwrapped"
  getContentUnwrappedDR :: (t <: Object) => Java (DefaultRequest t) InputStream

foreign import java unsafe "getEndpoint"
  getEndpointDR :: (t <: Object) => Java (DefaultRequest t) URI

foreign import java unsafe "getHeaders"
  getHeadersDR :: (t <: Object) => Java (DefaultRequest t) (Map JString JString)

foreign import java unsafe "getHttpMethod"
  getHttpMethodDR :: (t <: Object) => Java (DefaultRequest t) HttpMethodName

foreign import java unsafe "getOriginalRequest"
  getOriginalRequestDR :: (t <: Object) => Java (DefaultRequest t) AmazonWebServiceRequest

foreign import java unsafe "getOriginalRequestObject"
  getOriginalRequestObjectDR :: (t <: Object) => Java (DefaultRequest t) Object

foreign import java unsafe "getParameters"
  getParametersDR :: (t <: Object) => Java (DefaultRequest t) (Map JString (List JString))

-- End com.amazonaws.DefaultRequest

-- Start com.amazonaws.PredefinedClientConfigurations

data {-# CLASS "com.amazonaws.PredefinedClientConfigurations" #-} PredefinedClientConfigurations = PredefinedClientConfigurations (Object# PredefinedClientConfigurations)
  deriving Class

-- End com.amazonaws.PredefinedClientConfigurations

-- Start com.amazonaws.RequestConfig

data {-# CLASS "com.amazonaws.RequestConfig" #-} RequestConfig = RequestConfig (Object# RequestConfig)
  deriving Class

foreign import java unsafe "getClientExecutionTimeout" getClientExecutionTimeoutRC :: Java RequestConfig JInteger

foreign import java unsafe getCredentialsProvider :: Java RequestConfig AWSCredentialsProvider

foreign import java unsafe "getCustomQueryParameters" getCustomQueryParametersRC :: Java RequestConfig (Map JString (List JString))

foreign import java unsafe "getCustomRequestHeaders" getCustomRequestHeadersRC :: Java RequestConfig (Map JString JString)

foreign import java unsafe "getOriginalRequest" getOriginalRequestRC :: Java RequestConfig Object

foreign import java unsafe getProgressListener :: Java RequestConfig ProgressListener

foreign import java unsafe "getRequestClientOptions" getRequestClientOptionsRC :: Java RequestConfig RequestClientOptions

foreign import java unsafe "getRequestMetricsCollector" getRequestMetricsCollectorRC :: Java RequestConfig RequestMetricCollector

foreign import java unsafe "getRequestTimeout" getRequestTimeoutRC :: Java RequestConfig JInteger

foreign import java unsafe getRequestType :: Java RequestConfig JString

-- End com.amazonaws.RequestConfig

-- Start com.amazonaws.Response

data {-# CLASS "com.amazonaws.Response" #-} Response t = Response (Object# (Response t))
  deriving Class

foreign import java unsafe getAwsResponse :: (t <: Object) => Java (Response t) t

foreign import java unsafe getHttpResponse :: (t <: Object) => Java (Response t) HttpResponse

-- End com.amazonaws.Response

-- Start com.amazonaws.SDKGlobalConfiguration

data {-# CLASS "com.amazonaws.SDKGlobalConfiguration" #-} SDKGlobalConfiguration = SDKGlobalConfiguration (Object# SDKGlobalConfiguration)
  deriving Class

-- End com.amazonaws.SDKGlobalConfiguration

-- Start com.amazonaws.SystemDefaultDnsResolver

data {-# CLASS "com.amazonaws.SystemDefaultDnsResolver" #-} SystemDefaultDnsResolver = SystemDefaultDnsResolver (Object# SystemDefaultDnsResolver)
  deriving Class

-- End com.amazonaws.SystemDefaultDnsResolver

-- Start com.amazonaws.AmazonServiceException.ErrorType

data {-# CLASS "com.amazonaws.AmazonServiceException$ErrorType" #-} ErrorType = ErrorType (Object# ErrorType)
  deriving Class

foreign import java unsafe "@static @field com.amazonaws.AmazonServiceException$ErrorType.Client"
  errorTypeClient :: ErrorType

foreign import java unsafe "@static @field com.amazonaws.AmazonServiceException$ErrorType.Service"
  errorTypeService :: ErrorType

foreign import java unsafe "@static @field com.amazonaws.AmazonServiceException$ErrorType.Unknown"
  errorTypeUnknown :: ErrorType

-- End com.amazonaws.AmazonServiceException.ErrorType

-- Start com.amazonaws.HttpMethod

data {-# CLASS "com.amazonaws.HttpMethod" #-} HttpMethod = HttpMethod (Object# HttpMethod)
  deriving Class

foreign import java unsafe "@static @field com.amazonaws.HttpMethod.DELETE"
  httpMethodDELETE :: HttpMethod

foreign import java unsafe "@static @field com.amazonaws.HttpMethod.GET"
  httpMethodGET :: HttpMethod

foreign import java unsafe "@static @field com.amazonaws.HttpMethod.HEAD"
  httpMethodHEAD :: HttpMethod

foreign import java unsafe "@static @field com.amazonaws.HttpMethod.PATCH"
  httpMethodPATCH :: HttpMethod

foreign import java unsafe "@static @field com.amazonaws.HttpMethod.POST"
  httpMethodPOST :: HttpMethod

foreign import java unsafe "@static @field com.amazonaws.HttpMethod.PUT"
  httpMethodPUT :: HttpMethod

-- End com.amazonaws.HttpMethod

-- Start com.amazonaws.SDKGlobalTime

data {-# CLASS "com.amazonaws.SDKGlobalTime" #-} SDKGlobalTime = SDKGlobalTime (Object# SDKGlobalTime)
  deriving Class

-- End com.amazonaws.SDKGlobalTime

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

-- End com.amazonaws.http.SdkHttpMetadata

-- Start com.amazonaws.auth.AWSCredentials

data {-# CLASS "com.amazonaws.auth.AWSCredentials" #-} AWSCredentials = AWSCredentials (Object# AWSCredentials)
  deriving Class

foreign import java unsafe "@interface getAWSAccessKeyId"
  getAWSAccessKeyId :: Java AWSCredentials String

-- foreign import java unsafe "@interface getAWSSecretKey"
--   getAWSAccessKeyId :: Java AWSCredentials String

-- End com.amazonaws.auth.AWSCredentials

-- Start com.amazonaws.auth.AWSCredentialsProvider

data {-# CLASS "com.amazonaws.auth.AWSCredentialsProvider" #-} AWSCredentialsProvider = AWSCredentialsProvider (Object# AWSCredentialsProvider)
  deriving Class

foreign import java unsafe "@interface getCredentials"
  getCredentials :: Java AWSCredentialsProvider AWSCredentials

foreign import java unsafe "@interface refresh"
  refresh :: Java AWSCredentialsProvider ()

-- End com.amazonaws.auth.AWSCredentialsProvider

-- Start com.amazonaws.auth.Signer

data {-# CLASS "com.amazonaws.auth.Signer" #-} Signer = Signer (Object# Signer)
  deriving Class

-- End com.amazonaws.auth.Signer
-- Start com.amazonaws.event.ProgressListener

data {-# CLASS "com.amazonaws.ProgressListener" #-} ProgressListener = ProgressListener (Object# ProgressListener)
  deriving Class

foreign import java unsafe "@interface progressChanged" progressChanged :: Java ProgressListener ()

-- End com.amazonaws.event.ProgressListener

-- Start com.amazonaws.event.ProgressEvent

data {-# CLASS "com.amazonaws.ProgressEvent" #-} ProgressEvent = ProgressEvent (Object# ProgressEvent)
  deriving Class

foreign import java unsafe getBytes :: Java ProgressEvent Int64

foreign import java unsafe getBytesTransferred :: Java ProgressEvent Int64

foreign import java unsafe getEventType :: Java ProgressEvent ProgressEventType

-- End com.amazonaws.event.ProgressEvent

-- Start com.amazonaws.event.ProgressEventType

data {-# CLASS "com.amazonaws.ProgressEventType" #-} ProgressEventType = ProgressEventType (Object# ProgressEventType)
  deriving Class

-- End com.amazonaws.event.ProgressEventType
-- Start com.amazonaws.handlers.HandlerContextKey

data {-# CLASS "com.amazonaws.handlers.HandlerContextKey" #-} HandlerContextKey t = HandlerContextKey (Object# (HandlerContextKey t))
  deriving Class

-- End com.amazonaws.handlers.HandlerContextKey

-- Start com.amazonaws.handlers.RequestHandler

data {-# CLASS "com.amazonaws.handlers.RequestHandler" #-} RequestHandler = RequestHandler (Object# RequestHandler)
  deriving Class

foreign import java unsafe "@interface afterError"
  afterError :: Request b -> Exception -> Java RequestHandler ()

foreign import java unsafe "@interface afterResponse"
  afterResponse :: Request b -> Object -> TimingInfo -> Java RequestHandler ()

foreign import java unsafe "@interface beforeRequest"
  beforeRequest :: Request b -> Java RequestHandler ()

-- End com.amazonaws.handlers.RequestHandler

-- Start com.amazonaws.handlers.RequestHandler2

data {-# CLASS "com.amazonaws.handlers.RequestHandler2" #-} RequestHandler2 = RequestHandler2 (Object# RequestHandler2)
  deriving Class

-- End com.amazonaws.handlers.RequestHandler2

-- Start com.amazonaws.metric.RequestMetricCollector

data {-# CLASS "com.amazonaws.metric.RequestMetricCollector" #-} RequestMetricCollector = RequestMetricCollector (Object# RequestMetricCollector)
  deriving Class

foreign import java unsafe collectMetrics :: Java RequestMetricCollector ()

foreign import java unsafe isEnabled :: Java RequestMetricCollector Bool

-- End com.amazonaws.metric.RequestMetricCollector

-- Start com.amazonaws.metric.MetricType

data {-# CLASS "com.amazonaws.metric.MetricType" #-} MetricType = MetricType (Object# MetricType)
  deriving Class

foreign import java unsafe "@interface name" name :: (b <: MetricType) => Java MetricType String

-- End com.amazonaws.metric.MetricType
-- Start com.amazonaws.regions.Regions

data {-# CLASS "com.amazonaws.regions.Regions" #-} Regions = Regions (Object# Regions)
  deriving Class

foreign import java unsafe "@static @field com.amazonaws.regions.Regions.AP_NORTHEAST_1"
  rgAP_NORTHEAST_1 :: Regions

foreign import java unsafe "@static @field com.amazonaws.regions.Regions.AP_NORTHEAST_2"
  rgAP_NORTHEAST_2 :: Regions

foreign import java unsafe "@static @field com.amazonaws.regions.Regions.AP_SOUTH_1"
  rgAP_SOUTH_1  :: Regions

foreign import java unsafe "@static @field com.amazonaws.regions.Regions.AP_SOUTHEAST_1"
  rgAP_SOUTHEAST_1 :: Regions

foreign import java unsafe "@static @field com.amazonaws.regions.Regions.AP_SOUTHEAST_2"
  rgAP_SOUTHEAST_2 :: Regions

foreign import java unsafe "@static @field com.amazonaws.regions.Regions.CA_CENTRAL_1"
  rgCA_CENTRAL_1 :: Regions

foreign import java unsafe "@static @field com.amazonaws.regions.Regions.CN_NORTH_1"
  rgCN_NORTH_1 :: Regions

foreign import java unsafe "@static @field com.amazonaws.regions.Regions.EU_CENTRAL_1"
  rgEU_CENTRAL_1 :: Regions

foreign import java unsafe "@static @field com.amazonaws.regions.Regions.EU_WEST_1"
  rgEU_WEST_1 :: Regions

foreign import java unsafe "@static @field com.amazonaws.regions.Regions.EU_WEST_2"
  rgEU_WEST_2 :: Regions

foreign import java unsafe "@static @field com.amazonaws.regions.Regions.GovCloud"
  rgGovCloud :: Regions

foreign import java unsafe "@static @field com.amazonaws.regions.Regions.SA_EAST_1"
  rgSA_EAST_1 :: Regions

foreign import java unsafe "@static @field com.amazonaws.regions.Regions.US_EAST_1"
  rgUS_EAST_1 :: Regions

foreign import java unsafe "@static @field com.amazonaws.regions.Regions.US_EAST_2"
  rgUS_EAST_2 :: Regions

foreign import java unsafe "@static @field com.amazonaws.regions.Regions.US_WEST_1"
  rgUS_WEST_1 :: Regions

foreign import java unsafe "@static @field com.amazonaws.regions.Regions.US_WEST_2"
  rgUS_WEST_2 :: Regions

-- End com.amazonaws.regions.Regions
-- Start com.amazonaws.retry.RetryPolicy

data {-# CLASS "com.amazonaws.retry.RetryPolicy" #-} RetryPolicy = RetryPolicy (Object# RetryPolicy)
  deriving Class

foreign import java unsafe getBackoffStrategy :: Java RetryPolicy BackoffStrategy

foreign import java unsafe getMaxErrorRetry :: Java RetryPolicy Int

foreign import java unsafe getRetryCondition :: Java RetryPolicy RetryCondition

foreign import java unsafe isMaxErrorRetryInClientConfigHonored :: Java RetryPolicy Bool

-- End com.amazonaws.retry.RetryPolicy

-- Start com.amazonaws.retry.RetryPolicy.BackoffStrategy

data {-# CLASS "com.amazonaws.retry.RetryPolicy$BackoffStrategy" #-} BackoffStrategy = BackoffStrategy (Object# BackoffStrategy)
  deriving Class

--foreign import java unsafe "@interface"
--  delayBeforeNextRetry :: AmazonWebServiceRequest -> AmazonClientException -> Java BackoffStrategy Int64

-- End com.amazonaws.retry.RetryPolicy.BackoffStrategy

-- Start com.amazonaws.retry.RetryPolicy.RetryCondition

data {-# CLASS "com.amazonaws.retry.RetryPolicy$RetryCondition" #-} RetryCondition = RetryCondition (Object# RetryCondition)
  deriving Class

--foreign import java unsafe "@interface"
--  shouldRetry :: AmazonWebServiceRequest -> AmazonClientException -> Java RetryCondition Bool

-- End com.amazonaws.retry.RetryPolicy.RetryCondition
-- Start com.amazonaws.util.AWSRequestMetrics

data {-# CLASS "com.amazonaws.util.AWSRequestMetrics" #-} AWSRequestMetrics = AWSRequestMetrics (Object# AWSRequestMetrics)
  deriving Class

foreign import java unsafe addProperty :: (b <:AWSRequestMetrics )
  => MetricType -> Object -> Java b ()

foreign import java unsafe "addProperty" addProperty2 :: (b <:AWSRequestMetrics )
  => String -> Object -> Java b ()

foreign import java unsafe addPropertyWith :: (b <:AWSRequestMetrics )
  => MetricType -> Object -> Java b AWSRequestMetrics

foreign import java unsafe "addPropertyWith" addPropertyWith2 :: (b <:AWSRequestMetrics )
  => String -> Object -> Java b AWSRequestMetrics

foreign import java unsafe endEvent :: (b <:AWSRequestMetrics )
  => MetricType -> Java b ()

foreign import java unsafe "endEvent" endEvent2 :: (b <:AWSRequestMetrics )
  => String -> Java b ()

foreign import java unsafe getProperty :: (b <:AWSRequestMetrics )
  => MetricType -> Java b (List Object)

foreign import java unsafe "getProperty" getProperty2 :: (b <:AWSRequestMetrics )
  => String -> Java b (List Object)

foreign import java unsafe getTimingInfo :: (b <:AWSRequestMetrics ) => Java b TimingInfo

foreign import java unsafe incrementCounter :: (b <:AWSRequestMetrics )
  => MetricType -> Java b ()

foreign import java unsafe "incrementCounter" incrementCounter2 :: (b <:AWSRequestMetrics )
  => String -> Java b ()

foreign import java unsafe incrementCounterWith :: (b <:AWSRequestMetrics )
  => MetricType -> Java b ()

foreign import java unsafe "incrementCounterWith" incrementCounterWith2 :: (b <:AWSRequestMetrics )
  => String -> Java b ()

foreign import java unsafe isEnabledAWSMetrics :: (b <:AWSRequestMetrics ) => Java b Bool

foreign import java unsafe log :: (b <:AWSRequestMetrics ) => Java b ()

foreign import java unsafe setCounter :: (b <:AWSRequestMetrics ) => MetricType -> Int64 -> Java b Bool

foreign import java unsafe "setCounter" setCounter2 :: (b <:AWSRequestMetrics ) => String -> Int64 -> Java b Bool

foreign import java unsafe startEvent :: (b <:AWSRequestMetrics ) => MetricType -> Java b Bool

foreign import java unsafe "startEvent" startEvent2 :: (b <:AWSRequestMetrics ) => String -> Java b Bool

foreign import java unsafe withCounter :: (b <:AWSRequestMetrics ) => MetricType -> Int64 -> Java b AWSRequestMetrics

foreign import java unsafe "withCounter" withCounter2 :: (b <:AWSRequestMetrics ) => String -> Int64 -> Java b AWSRequestMetrics

-- Start com.amazonaws.util.TimingInfo

data {-# CLASS "com.amazonaws.util.TimingInfo" #-} TimingInfo = TimingInfo (Object# TimingInfo)
  deriving Class

foreign import java unsafe addSubMeasurement :: String -> TimingInfo -> Java TimingInfo ()

foreign import java unsafe endTiming :: Java TimingInfo TimingInfo

foreign import java unsafe getAllCounters :: Java TimingInfo (Map JString JNumber)

foreign import java unsafe getAllSubMeasurements :: String -> Java TimingInfo (List TimingInfo)

foreign import java unsafe getCounters :: String -> Java TimingInfo JNumber

foreign import java unsafe getElapsedTimeMillis :: Java TimingInfo Int64

foreign import java unsafe getEndEpochTimeMilli :: Java TimingInfo Int64

foreign import java unsafe getEndEpochTimeMilliIfKnown :: Java TimingInfo JLong

foreign import java unsafe getEndTime :: Java TimingInfo Int64

foreign import java unsafe getEndTimeNano :: Java TimingInfo Int64

foreign import java unsafe getEndTimeNanoIfKnown :: Java TimingInfo JLong

foreign import java unsafe getLastSubMeasurement :: String -> Java TimingInfo TimingInfo

foreign import java unsafe getStartEpochTimeMilli :: Java TimingInfo Int64

foreign import java unsafe getStartEpochTimeMilliIfKnown :: Java TimingInfo JLong

foreign import java unsafe getStartTime :: Java TimingInfo Int64

foreign import java unsafe getStartTimeNano :: Java TimingInfo Int64

foreign import java unsafe getSubMeasurement :: String -> Java TimingInfo TimingInfo

foreign import java unsafe "getSubMeasurement" getSubMeasurement2 :: String -> Int -> Java TimingInfo TimingInfo

foreign import java unsafe getSubMeasurementsByName :: Java TimingInfo (Map JString (List TimingInfo))

foreign import java unsafe getTimeTakenMillis :: Java TimingInfo Double

foreign import java unsafe getTimeTakenMillisIfKnown :: Java TimingInfo JDouble

foreign import java unsafe "incrementCounter" incrementCounterTI :: String -> Java TimingInfo ()

foreign import java unsafe isEndTimeKnown :: Java TimingInfo Bool

foreign import java unsafe isStartEpochTimeMilliKnown :: Java TimingInfo Bool

foreign import java unsafe "setCounter" setCounterTI :: String -> Int64 -> Java TimingInfo ()

foreign import java unsafe setEndTime :: Int64 -> Java TimingInfo ()

foreign import java unsafe setEndTimeNano :: Int64 -> Java TimingInfo ()

-- End com.amazonaws.util.TimingInfo

-- Start com.amazonaws.http.HttpResponse

data {-# CLASS "com.amazonaws.http.HttpResponse" #-} HttpResponse = HttpResponse (Object# HttpResponse)
  deriving Class

-- End com.amazonaws.http.HttpResponse
