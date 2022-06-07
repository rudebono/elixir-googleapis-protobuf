defmodule Google.Cloud.Talent.V4beta1.LocationFilter.TelecommutePreference do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TELECOMMUTE_PREFERENCE_UNSPECIFIED, 0
  field :TELECOMMUTE_EXCLUDED, 1
  field :TELECOMMUTE_ALLOWED, 2
  field :TELECOMMUTE_JOBS_EXCLUDED, 3
end
defmodule Google.Cloud.Talent.V4beta1.CompensationFilter.FilterType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :FILTER_TYPE_UNSPECIFIED, 0
  field :UNIT_ONLY, 1
  field :UNIT_AND_AMOUNT, 2
  field :ANNUALIZED_BASE_AMOUNT, 3
  field :ANNUALIZED_TOTAL_AMOUNT, 4
end
defmodule Google.Cloud.Talent.V4beta1.CommuteFilter.RoadTraffic do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ROAD_TRAFFIC_UNSPECIFIED, 0
  field :TRAFFIC_FREE, 1
  field :BUSY_HOUR, 2
end
defmodule Google.Cloud.Talent.V4beta1.JobQuery do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :query, 1, type: :string
  field :query_language_code, 14, type: :string, json_name: "queryLanguageCode"
  field :companies, 2, repeated: true, type: :string

  field :location_filters, 3,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.LocationFilter,
    json_name: "locationFilters"

  field :job_categories, 4,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.JobCategory,
    json_name: "jobCategories",
    enum: true

  field :commute_filter, 5,
    type: Google.Cloud.Talent.V4beta1.CommuteFilter,
    json_name: "commuteFilter"

  field :company_display_names, 6, repeated: true, type: :string, json_name: "companyDisplayNames"

  field :compensation_filter, 7,
    type: Google.Cloud.Talent.V4beta1.CompensationFilter,
    json_name: "compensationFilter"

  field :custom_attribute_filter, 8, type: :string, json_name: "customAttributeFilter"
  field :disable_spell_check, 9, type: :bool, json_name: "disableSpellCheck"

  field :employment_types, 10,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.EmploymentType,
    json_name: "employmentTypes",
    enum: true

  field :language_codes, 11, repeated: true, type: :string, json_name: "languageCodes"

  field :publish_time_range, 12,
    type: Google.Cloud.Talent.V4beta1.TimestampRange,
    json_name: "publishTimeRange"

  field :excluded_jobs, 13, repeated: true, type: :string, json_name: "excludedJobs"
end
defmodule Google.Cloud.Talent.V4beta1.LocationFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :address, 1, type: :string
  field :region_code, 2, type: :string, json_name: "regionCode"
  field :lat_lng, 3, type: Google.Type.LatLng, json_name: "latLng"
  field :distance_in_miles, 4, type: :double, json_name: "distanceInMiles"

  field :telecommute_preference, 5,
    type: Google.Cloud.Talent.V4beta1.LocationFilter.TelecommutePreference,
    json_name: "telecommutePreference",
    enum: true

  field :negated, 6, type: :bool
end
defmodule Google.Cloud.Talent.V4beta1.CompensationFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Talent.V4beta1.CompensationFilter.FilterType,
    enum: true,
    deprecated: false

  field :units, 2,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.CompensationInfo.CompensationUnit,
    enum: true,
    deprecated: false

  field :range, 3, type: Google.Cloud.Talent.V4beta1.CompensationInfo.CompensationRange

  field :include_jobs_with_unspecified_compensation_range, 4,
    type: :bool,
    json_name: "includeJobsWithUnspecifiedCompensationRange"
end
defmodule Google.Cloud.Talent.V4beta1.CommuteFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :traffic_option, 0

  field :commute_method, 1,
    type: Google.Cloud.Talent.V4beta1.CommuteMethod,
    json_name: "commuteMethod",
    enum: true,
    deprecated: false

  field :start_coordinates, 2,
    type: Google.Type.LatLng,
    json_name: "startCoordinates",
    deprecated: false

  field :travel_duration, 3,
    type: Google.Protobuf.Duration,
    json_name: "travelDuration",
    deprecated: false

  field :allow_imprecise_addresses, 4, type: :bool, json_name: "allowImpreciseAddresses"

  field :road_traffic, 5,
    type: Google.Cloud.Talent.V4beta1.CommuteFilter.RoadTraffic,
    json_name: "roadTraffic",
    enum: true,
    oneof: 0

  field :departure_time, 6, type: Google.Type.TimeOfDay, json_name: "departureTime", oneof: 0
end
