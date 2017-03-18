module AWS.Core.Event where

import Java
import Java.IO
import Java.Net
import AWS.Core.Event

-- Start com.amazonaws.event.ProgressListener

data {-# CLASS "com.amazonaws.ProgressListener" #-} ProgressListener = ProgressListener (Object# ProgressListener)
  deriving Class

foreign import java unsafe "@interface progressChanged" progressChanged :: Java ProgressListener ()
