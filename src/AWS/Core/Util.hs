module AWS.Core.Util where

import Java
import Java.IO
import Java.Net
import AWS.Core.Types

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

foreign import java unsafe isEnabled :: (b <:AWSRequestMetrics ) => Java b Bool

foreign import java unsafe log :: (b <:AWSRequestMetrics ) => Java b ()

foreign import java unsafe setCounter :: (b <:AWSRequestMetrics ) => MetricType -> Int64 -> Java b Bool

foreign import java unsafe "setCounter" setCounter2 :: (b <:AWSRequestMetrics ) => String -> Int64 -> Java b Bool

foreign import java unsafe startEvent :: (b <:AWSRequestMetrics ) => MetricType -> Java b Bool

foreign import java unsafe "startEvent" startEvent :: (b <:AWSRequestMetrics ) => String -> Java b Bool

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

foreign import java unsafe incrementCounter :: String -> Java TimingInfo ()

foreign import java unsafe isEndTimeKnown :: Java TimingInfo Bool

foreign import java unsafe isStartEpochTimeMilliKnown :: Java TimingInfo Bool

foreign import java unsafe setCounter :: String -> Int64 -> Java TimingInfo ()

foreign import java unsafe setEndTime :: Int64 -> Java TimingInfo ()

foreign import java unsafe setEndTimeNano :: Int64 -> Java TimingInfo ()

-- End com.amazonaws.util.TimingInfo
