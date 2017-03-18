module AWS.Core.Event where

import Java
import Java.IO
import Java.Net
import AWS.Core.Event

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
