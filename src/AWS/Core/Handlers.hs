module AWS.Core.Handlers where

import Java
import Java.IO
import Java.Net
import AWS.Core.Types

-- Start com.amazonaws.handlers.HandlerContextKey

data {-# CLASS "com.amazonaws.handlers.HandlerContextKey" #-} HandlerContextKey t = HandlerContextKey (Object# (HandlerContextKey t))
  deriving Class

-- End com.amazonaws.handlers.HandlerContextKey

-- Start com.amazonaws.handlers.RequestHandler

data {-# CLASS "com.amazonaws.handlers.RequestHandler" #-} RequestHandler = RequestHandler (Object# RequestHandler)
  deriving Class

foreign import java unsafe "@interface afterError"
  afterError :: Request b -> Exection -> Java RequestHandler ()

foreign import java unsafe "@interface afterResponse"
  afterResponse :: Request b -> Object -> TimingInfo -> Java RequestHandler ()

foreign import java unsafe "@interface beforeRequest"
  beforeRequest :: Request b -> Java RequestHandler ()

-- End com.amazonaws.handlers.RequestHandler

-- Start com.amazonaws.handlers.RequestHandler2

data {-# CLASS "com.amazonaws.handlers.RequestHandler2" #-} RequestHandler2 = RequestHandler2 (Object# RequestHandler2)
  deriving Class

-- End com.amazonaws.handlers.RequestHandler2
