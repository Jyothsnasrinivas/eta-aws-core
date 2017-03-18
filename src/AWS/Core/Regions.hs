module AWS.Core.Regions where

import Java
import Java.IO
import Java.Net
import AWS.Core.Types

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
