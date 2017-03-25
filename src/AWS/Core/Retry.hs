module AWS.Core.Retry where

import Java
import Java.IO
import Java.Net
import AWS.Core.Types

-- Start com.amazonaws.retry.RetryPolicy

data {-# CLASS "com.amazonaws.retry.RetryPolicy" #-} RetryPolicy = RetryPolicy (Object# RetryPolicy)
  deriving Class

foreign import java unsafe getBackoffStrategy :: Java RetryPolicy RetryPolicy.BackoffStrategy

foreign import java unsafe getMaxErrorRetry :: Java RetryPolicy Int

foreign import java unsafe getRetryCondition :: Java RetryPolicy RetryPolicy.RetryCondition

foreign import java unsafe isMaxErrorRetryInClientConfigHonored :: Java RetryPolicy Bool

-- End com.amazonaws.retry.RetryPolicy

-- Start com.amazonaws.retry.RetryPolicy.BackoffStrategy

data {-# CLASS "com.amazonaws.retry.RetryPolicy$BackoffStrategy" #-} BackoffStrategy = BackoffStrategy (Object# BackoffStrategy)
  deriving Class

foreign import java unsafe "@interface"
  delayBeforeNextRetry :: AmazonWebServiceRequest -> AmazonClientException -> Java BackoffStrategy Int64

-- End com.amazonaws.retry.RetryPolicy.BackoffStrategy

-- Start com.amazonaws.retry.RetryPolicy.RetryCondition

data {-# CLASS "com.amazonaws.retry.RetryPolicy$RetryCondition" #-} RetryCondition = RetryCondition (Object# RetryCondition)
  deriving Class

foreign import java unsafe "@interface"
  shouldRetry :: AmazonWebServiceRequest -> AmazonClientException -> Java RetryCondition Bool

-- End com.amazonaws.retry.RetryPolicy.RetryCondition
