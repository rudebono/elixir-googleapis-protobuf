defmodule Google.Maps.Solar.V1.DataLayerView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DATA_LAYER_VIEW_UNSPECIFIED, 0
  field :DSM_LAYER, 1
  field :IMAGERY_LAYERS, 2
  field :IMAGERY_AND_ANNUAL_FLUX_LAYERS, 3
  field :IMAGERY_AND_ALL_FLUX_LAYERS, 4
  field :FULL_LAYERS, 5
end

defmodule Google.Maps.Solar.V1.ImageryQuality do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :IMAGERY_QUALITY_UNSPECIFIED, 0
  field :HIGH, 1
  field :MEDIUM, 2
  field :LOW, 3
end

defmodule Google.Maps.Solar.V1.SolarPanelOrientation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SOLAR_PANEL_ORIENTATION_UNSPECIFIED, 0
  field :LANDSCAPE, 1
  field :PORTRAIT, 2
end

defmodule Google.Maps.Solar.V1.FindClosestBuildingInsightsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :location, 1, type: Google.Type.LatLng, deprecated: false

  field :required_quality, 3,
    type: Google.Maps.Solar.V1.ImageryQuality,
    json_name: "requiredQuality",
    enum: true,
    deprecated: false

  field :exact_quality_required, 4,
    type: :bool,
    json_name: "exactQualityRequired",
    deprecated: false
end

defmodule Google.Maps.Solar.V1.LatLngBox do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sw, 1, type: Google.Type.LatLng
  field :ne, 2, type: Google.Type.LatLng
end

defmodule Google.Maps.Solar.V1.BuildingInsights do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :center, 2, type: Google.Type.LatLng
  field :bounding_box, 9, type: Google.Maps.Solar.V1.LatLngBox, json_name: "boundingBox"
  field :imagery_date, 3, type: Google.Type.Date, json_name: "imageryDate"
  field :imagery_processed_date, 11, type: Google.Type.Date, json_name: "imageryProcessedDate"
  field :postal_code, 4, type: :string, json_name: "postalCode"
  field :administrative_area, 5, type: :string, json_name: "administrativeArea"
  field :statistical_area, 6, type: :string, json_name: "statisticalArea"
  field :region_code, 7, type: :string, json_name: "regionCode"

  field :solar_potential, 8,
    type: Google.Maps.Solar.V1.SolarPotential,
    json_name: "solarPotential"

  field :imagery_quality, 10,
    type: Google.Maps.Solar.V1.ImageryQuality,
    json_name: "imageryQuality",
    enum: true
end

defmodule Google.Maps.Solar.V1.SolarPotential do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :max_array_panels_count, 1, type: :int32, json_name: "maxArrayPanelsCount"
  field :panel_capacity_watts, 9, type: :float, json_name: "panelCapacityWatts"
  field :panel_height_meters, 10, type: :float, json_name: "panelHeightMeters"
  field :panel_width_meters, 11, type: :float, json_name: "panelWidthMeters"
  field :panel_lifetime_years, 12, type: :int32, json_name: "panelLifetimeYears"
  field :max_array_area_meters2, 2, type: :float, json_name: "maxArrayAreaMeters2"
  field :max_sunshine_hours_per_year, 3, type: :float, json_name: "maxSunshineHoursPerYear"
  field :carbon_offset_factor_kg_per_mwh, 4, type: :float, json_name: "carbonOffsetFactorKgPerMwh"

  field :whole_roof_stats, 5,
    type: Google.Maps.Solar.V1.SizeAndSunshineStats,
    json_name: "wholeRoofStats"

  field :building_stats, 13,
    type: Google.Maps.Solar.V1.SizeAndSunshineStats,
    json_name: "buildingStats"

  field :roof_segment_stats, 6,
    repeated: true,
    type: Google.Maps.Solar.V1.RoofSegmentSizeAndSunshineStats,
    json_name: "roofSegmentStats"

  field :solar_panels, 14,
    repeated: true,
    type: Google.Maps.Solar.V1.SolarPanel,
    json_name: "solarPanels"

  field :solar_panel_configs, 7,
    repeated: true,
    type: Google.Maps.Solar.V1.SolarPanelConfig,
    json_name: "solarPanelConfigs"

  field :financial_analyses, 8,
    repeated: true,
    type: Google.Maps.Solar.V1.FinancialAnalysis,
    json_name: "financialAnalyses"
end

defmodule Google.Maps.Solar.V1.RoofSegmentSizeAndSunshineStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :pitch_degrees, 1, proto3_optional: true, type: :float, json_name: "pitchDegrees"
  field :azimuth_degrees, 2, proto3_optional: true, type: :float, json_name: "azimuthDegrees"
  field :stats, 3, type: Google.Maps.Solar.V1.SizeAndSunshineStats
  field :center, 4, type: Google.Type.LatLng
  field :bounding_box, 5, type: Google.Maps.Solar.V1.LatLngBox, json_name: "boundingBox"

  field :plane_height_at_center_meters, 6,
    proto3_optional: true,
    type: :float,
    json_name: "planeHeightAtCenterMeters"
end

defmodule Google.Maps.Solar.V1.SizeAndSunshineStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :area_meters2, 1, type: :float, json_name: "areaMeters2"
  field :sunshine_quantiles, 2, repeated: true, type: :float, json_name: "sunshineQuantiles"
  field :ground_area_meters2, 3, type: :float, json_name: "groundAreaMeters2"
end

defmodule Google.Maps.Solar.V1.SolarPanel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :center, 1, type: Google.Type.LatLng
  field :orientation, 2, type: Google.Maps.Solar.V1.SolarPanelOrientation, enum: true
  field :yearly_energy_dc_kwh, 3, type: :float, json_name: "yearlyEnergyDcKwh"
  field :segment_index, 4, proto3_optional: true, type: :int32, json_name: "segmentIndex"
end

defmodule Google.Maps.Solar.V1.SolarPanelConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :panels_count, 1, type: :int32, json_name: "panelsCount"
  field :yearly_energy_dc_kwh, 2, type: :float, json_name: "yearlyEnergyDcKwh"

  field :roof_segment_summaries, 4,
    repeated: true,
    type: Google.Maps.Solar.V1.RoofSegmentSummary,
    json_name: "roofSegmentSummaries"
end

defmodule Google.Maps.Solar.V1.RoofSegmentSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :pitch_degrees, 2, proto3_optional: true, type: :float, json_name: "pitchDegrees"
  field :azimuth_degrees, 3, proto3_optional: true, type: :float, json_name: "azimuthDegrees"
  field :panels_count, 7, type: :int32, json_name: "panelsCount"
  field :yearly_energy_dc_kwh, 8, type: :float, json_name: "yearlyEnergyDcKwh"
  field :segment_index, 9, proto3_optional: true, type: :int32, json_name: "segmentIndex"
end

defmodule Google.Maps.Solar.V1.FinancialAnalysis do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :monthly_bill, 3, type: Google.Type.Money, json_name: "monthlyBill"
  field :default_bill, 4, type: :bool, json_name: "defaultBill"
  field :average_kwh_per_month, 5, type: :float, json_name: "averageKwhPerMonth"
  field :panel_config_index, 6, proto3_optional: true, type: :int32, json_name: "panelConfigIndex"

  field :financial_details, 7,
    type: Google.Maps.Solar.V1.FinancialDetails,
    json_name: "financialDetails"

  field :leasing_savings, 8,
    type: Google.Maps.Solar.V1.LeasingSavings,
    json_name: "leasingSavings"

  field :cash_purchase_savings, 9,
    type: Google.Maps.Solar.V1.CashPurchaseSavings,
    json_name: "cashPurchaseSavings"

  field :financed_purchase_savings, 10,
    type: Google.Maps.Solar.V1.FinancedPurchaseSavings,
    json_name: "financedPurchaseSavings"
end

defmodule Google.Maps.Solar.V1.FinancialDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :initial_ac_kwh_per_year, 1, type: :float, json_name: "initialAcKwhPerYear"

  field :remaining_lifetime_utility_bill, 2,
    type: Google.Type.Money,
    json_name: "remainingLifetimeUtilityBill"

  field :federal_incentive, 3, type: Google.Type.Money, json_name: "federalIncentive"
  field :state_incentive, 4, type: Google.Type.Money, json_name: "stateIncentive"
  field :utility_incentive, 5, type: Google.Type.Money, json_name: "utilityIncentive"
  field :lifetime_srec_total, 6, type: Google.Type.Money, json_name: "lifetimeSrecTotal"

  field :cost_of_electricity_without_solar, 7,
    type: Google.Type.Money,
    json_name: "costOfElectricityWithoutSolar"

  field :net_metering_allowed, 8, type: :bool, json_name: "netMeteringAllowed"
  field :solar_percentage, 9, proto3_optional: true, type: :float, json_name: "solarPercentage"

  field :percentage_exported_to_grid, 10,
    proto3_optional: true,
    type: :float,
    json_name: "percentageExportedToGrid"
end

defmodule Google.Maps.Solar.V1.SavingsOverTime do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :savings_year1, 1, type: Google.Type.Money, json_name: "savingsYear1"
  field :savings_year20, 2, type: Google.Type.Money, json_name: "savingsYear20"

  field :present_value_of_savings_year20, 3,
    type: Google.Type.Money,
    json_name: "presentValueOfSavingsYear20"

  field :savings_lifetime, 5, type: Google.Type.Money, json_name: "savingsLifetime"

  field :present_value_of_savings_lifetime, 6,
    type: Google.Type.Money,
    json_name: "presentValueOfSavingsLifetime"

  field :financially_viable, 4, type: :bool, json_name: "financiallyViable"
end

defmodule Google.Maps.Solar.V1.LeasingSavings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :leases_allowed, 1, type: :bool, json_name: "leasesAllowed"
  field :leases_supported, 2, type: :bool, json_name: "leasesSupported"
  field :annual_leasing_cost, 3, type: Google.Type.Money, json_name: "annualLeasingCost"
  field :savings, 4, type: Google.Maps.Solar.V1.SavingsOverTime
end

defmodule Google.Maps.Solar.V1.CashPurchaseSavings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :out_of_pocket_cost, 1, type: Google.Type.Money, json_name: "outOfPocketCost"
  field :upfront_cost, 2, type: Google.Type.Money, json_name: "upfrontCost"
  field :rebate_value, 3, type: Google.Type.Money, json_name: "rebateValue"
  field :payback_years, 4, proto3_optional: true, type: :float, json_name: "paybackYears"
  field :savings, 5, type: Google.Maps.Solar.V1.SavingsOverTime
end

defmodule Google.Maps.Solar.V1.FinancedPurchaseSavings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :annual_loan_payment, 1, type: Google.Type.Money, json_name: "annualLoanPayment"
  field :rebate_value, 2, type: Google.Type.Money, json_name: "rebateValue"
  field :loan_interest_rate, 3, type: :float, json_name: "loanInterestRate"
  field :savings, 4, type: Google.Maps.Solar.V1.SavingsOverTime
end

defmodule Google.Maps.Solar.V1.GetDataLayersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :location, 1, type: Google.Type.LatLng, deprecated: false
  field :radius_meters, 2, type: :float, json_name: "radiusMeters", deprecated: false
  field :view, 3, type: Google.Maps.Solar.V1.DataLayerView, enum: true, deprecated: false

  field :required_quality, 5,
    type: Google.Maps.Solar.V1.ImageryQuality,
    json_name: "requiredQuality",
    enum: true,
    deprecated: false

  field :pixel_size_meters, 6, type: :float, json_name: "pixelSizeMeters", deprecated: false

  field :exact_quality_required, 7,
    type: :bool,
    json_name: "exactQualityRequired",
    deprecated: false
end

defmodule Google.Maps.Solar.V1.DataLayers do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :imagery_date, 1, type: Google.Type.Date, json_name: "imageryDate"
  field :imagery_processed_date, 2, type: Google.Type.Date, json_name: "imageryProcessedDate"
  field :dsm_url, 3, type: :string, json_name: "dsmUrl"
  field :rgb_url, 4, type: :string, json_name: "rgbUrl"
  field :mask_url, 5, type: :string, json_name: "maskUrl"
  field :annual_flux_url, 6, type: :string, json_name: "annualFluxUrl"
  field :monthly_flux_url, 7, type: :string, json_name: "monthlyFluxUrl"
  field :hourly_shade_urls, 8, repeated: true, type: :string, json_name: "hourlyShadeUrls"

  field :imagery_quality, 9,
    type: Google.Maps.Solar.V1.ImageryQuality,
    json_name: "imageryQuality",
    enum: true
end

defmodule Google.Maps.Solar.V1.GetGeoTiffRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
end

defmodule Google.Maps.Solar.V1.Solar.Service do
  @moduledoc false

  use GRPC.Service, name: "google.maps.solar.v1.Solar", protoc_gen_elixir_version: "0.14.1"

  rpc :FindClosestBuildingInsights,
      Google.Maps.Solar.V1.FindClosestBuildingInsightsRequest,
      Google.Maps.Solar.V1.BuildingInsights

  rpc :GetDataLayers, Google.Maps.Solar.V1.GetDataLayersRequest, Google.Maps.Solar.V1.DataLayers

  rpc :GetGeoTiff, Google.Maps.Solar.V1.GetGeoTiffRequest, Google.Api.HttpBody
end

defmodule Google.Maps.Solar.V1.Solar.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Maps.Solar.V1.Solar.Service
end
