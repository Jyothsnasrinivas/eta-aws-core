module AWS.Core.Metric where

import Java
import Java.IO
import Java.Net
import AWS.Core.Types

-- Start com.amazonaws.metric.RequestMetricCollector

data {-# CLASS "com.amazonaws.metric.RequestMetricCollector" #-} RequestMetricCollector = RequestMetricCollector (Object# RequestMetricCollector)
  deriving Class

foreign import java unsafe collectMetrics :: Java RequestMetricCollector ()

foreign import java unsafe isEnabled :: Java RequestMetricCollector Bool

-- End com.amazonaws.metric.RequestMetricCollector

-- Start com.amazonaws.metric.MetricType

data {-# CLASS "com.amazonaws.metric.MetricType" #-} MetricType = MetricType (Object# MetricType)
  deriving Class

foreign import java unsafe "@interface name" :: (b <: MetricType) => Java MetricType String

-- End com.amazonaws.metric.MetricType
