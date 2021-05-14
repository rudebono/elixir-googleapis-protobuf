defmodule Google.Cloud.Talent.V4.LocationFilter.TelecommutePreference do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TELECOMMUTE_PREFERENCE_UNSPECIFIED
          | :TELECOMMUTE_EXCLUDED
          | :TELECOMMUTE_ALLOWED

  field :TELECOMMUTE_PREFERENCE_UNSPECIFIED, 0

  field :TELECOMMUTE_EXCLUDED, 1

  field :TELECOMMUTE_ALLOWED, 2
end

defmodule Google.Cloud.Talent.V4.CompensationFilter.FilterType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FILTER_TYPE_UNSPECIFIED
          | :UNIT_ONLY
          | :UNIT_AND_AMOUNT
          | :ANNUALIZED_BASE_AMOUNT
          | :ANNUALIZED_TOTAL_AMOUNT

  field :FILTER_TYPE_UNSPECIFIED, 0

  field :UNIT_ONLY, 1

  field :UNIT_AND_AMOUNT, 2

  field :ANNUALIZED_BASE_AMOUNT, 3

  field :ANNUALIZED_TOTAL_AMOUNT, 4
end

defmodule Google.Cloud.Talent.V4.CommuteFilter.RoadTraffic do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ROAD_TRAFFIC_UNSPECIFIED | :TRAFFIC_FREE | :BUSY_HOUR

  field :ROAD_TRAFFIC_UNSPECIFIED, 0

  field :TRAFFIC_FREE, 1

  field :BUSY_HOUR, 2
end

defmodule Google.Cloud.Talent.V4.JobQuery do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t(),
          query_language_code: String.t(),
          companies: [String.t()],
          location_filters: [Google.Cloud.Talent.V4.LocationFilter.t()],
          job_categories: [[Google.Cloud.Talent.V4.JobCategory.t()]],
          commute_filter: Google.Cloud.Talent.V4.CommuteFilter.t() | nil,
          company_display_names: [String.t()],
          compensation_filter: Google.Cloud.Talent.V4.CompensationFilter.t() | nil,
          custom_attribute_filter: String.t(),
          disable_spell_check: boolean,
          employment_types: [[Google.Cloud.Talent.V4.EmploymentType.t()]],
          language_codes: [String.t()],
          publish_time_range: Google.Cloud.Talent.V4.TimestampRange.t() | nil,
          excluded_jobs: [String.t()]
        }

  defstruct [
    :query,
    :query_language_code,
    :companies,
    :location_filters,
    :job_categories,
    :commute_filter,
    :company_display_names,
    :compensation_filter,
    :custom_attribute_filter,
    :disable_spell_check,
    :employment_types,
    :language_codes,
    :publish_time_range,
    :excluded_jobs
  ]

  field :query, 1, type: :string
  field :query_language_code, 14, type: :string
  field :companies, 2, repeated: true, type: :string
  field :location_filters, 3, repeated: true, type: Google.Cloud.Talent.V4.LocationFilter
  field :job_categories, 4, repeated: true, type: Google.Cloud.Talent.V4.JobCategory, enum: true
  field :commute_filter, 5, type: Google.Cloud.Talent.V4.CommuteFilter
  field :company_display_names, 6, repeated: true, type: :string
  field :compensation_filter, 7, type: Google.Cloud.Talent.V4.CompensationFilter
  field :custom_attribute_filter, 8, type: :string
  field :disable_spell_check, 9, type: :bool

  field :employment_types, 10,
    repeated: true,
    type: Google.Cloud.Talent.V4.EmploymentType,
    enum: true

  field :language_codes, 11, repeated: true, type: :string
  field :publish_time_range, 12, type: Google.Cloud.Talent.V4.TimestampRange
  field :excluded_jobs, 13, repeated: true, type: :string
end

defmodule Google.Cloud.Talent.V4.LocationFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          address: String.t(),
          region_code: String.t(),
          lat_lng: Google.Type.LatLng.t() | nil,
          distance_in_miles: float | :infinity | :negative_infinity | :nan,
          telecommute_preference: Google.Cloud.Talent.V4.LocationFilter.TelecommutePreference.t()
        }

  defstruct [:address, :region_code, :lat_lng, :distance_in_miles, :telecommute_preference]

  field :address, 1, type: :string
  field :region_code, 2, type: :string
  field :lat_lng, 3, type: Google.Type.LatLng
  field :distance_in_miles, 4, type: :double

  field :telecommute_preference, 5,
    type: Google.Cloud.Talent.V4.LocationFilter.TelecommutePreference,
    enum: true
end

defmodule Google.Cloud.Talent.V4.CompensationFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Talent.V4.CompensationFilter.FilterType.t(),
          units: [[Google.Cloud.Talent.V4.CompensationInfo.CompensationUnit.t()]],
          range: Google.Cloud.Talent.V4.CompensationInfo.CompensationRange.t() | nil,
          include_jobs_with_unspecified_compensation_range: boolean
        }

  defstruct [:type, :units, :range, :include_jobs_with_unspecified_compensation_range]

  field :type, 1, type: Google.Cloud.Talent.V4.CompensationFilter.FilterType, enum: true

  field :units, 2,
    repeated: true,
    type: Google.Cloud.Talent.V4.CompensationInfo.CompensationUnit,
    enum: true

  field :range, 3, type: Google.Cloud.Talent.V4.CompensationInfo.CompensationRange
  field :include_jobs_with_unspecified_compensation_range, 4, type: :bool
end

defmodule Google.Cloud.Talent.V4.CommuteFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          traffic_option: {atom, any},
          commute_method: Google.Cloud.Talent.V4.CommuteMethod.t(),
          start_coordinates: Google.Type.LatLng.t() | nil,
          travel_duration: Google.Protobuf.Duration.t() | nil,
          allow_imprecise_addresses: boolean
        }

  defstruct [
    :traffic_option,
    :commute_method,
    :start_coordinates,
    :travel_duration,
    :allow_imprecise_addresses
  ]

  oneof :traffic_option, 0
  field :commute_method, 1, type: Google.Cloud.Talent.V4.CommuteMethod, enum: true
  field :start_coordinates, 2, type: Google.Type.LatLng
  field :travel_duration, 3, type: Google.Protobuf.Duration
  field :allow_imprecise_addresses, 4, type: :bool

  field :road_traffic, 5,
    type: Google.Cloud.Talent.V4.CommuteFilter.RoadTraffic,
    enum: true,
    oneof: 0

  field :departure_time, 6, type: Google.Type.TimeOfDay, oneof: 0
end
