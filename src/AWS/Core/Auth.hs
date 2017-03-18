module AWS.Core.Auth where

import Java
import Java.IO
import Java.Net
import AWS.Core.Types

-- Start com.amazonaws.auth.AWSCredentials

data {-# CLASS "com.amazonaws.auth.AWSCredentials" #-} AWSCredentials = AWSCredentials (Object# AWSCredentials)
  deriving Class

foreign import java unsafe "@interface getAWSAccessKeyId"
  getAWSAccessKeyId :: Java AWSCredentials String

foreign import java unsafe "@interface getAWSSecretKey"
  getAWSAccessKeyId :: Java AWSCredentials String

-- End com.amazonaws.auth.AWSCredentials

-- Start com.amazonaws.auth.AWSCredentialsProvider

data {-# CLASS "com.amazonaws.auth.AWSCredentialsProvider" #-} AWSCredentialsProvider = AWSCredentialsProvider (Object# AWSCredentialsProvider)
  deriving Class

foreign import java unsafe "@interface getCredentials"
  getCredentials :: Java AWSCredentialsProvider AWSCredentials

foreign import java unsafe "@interface refresh"
  refresh :: Java AWSCredentialsProvider ()
