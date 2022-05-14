defmodule Google.Cloud.Talent.V4beta1.LocationFilter.TelecommutePreference do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TELECOMMUTE_PREFERENCE_UNSPECIFIED, 0
  field :TELECOMMUTE_EXCLUDED, 1
  field :TELECOMMUTE_ALLOWED, 2
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
defmodule Google.Cloud.Talent.V4beta1.EmployerFilter.EmployerFilterMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :EMPLOYER_FILTER_MODE_UNSPECIFIED, 0
  field :ALL_EMPLOYMENT_RECORDS, 1
  field :CURRENT_EMPLOYMENT_RECORDS_ONLY, 2
  field :PAST_EMPLOYMENT_RECORDS_ONLY, 3
end
defmodule Google.Cloud.Talent.V4beta1.TimeFilter.TimeField do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TIME_FIELD_UNSPECIFIED, 0
  field :CREATE_TIME, 1
  field :UPDATE_TIME, 2
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
defmodule Google.Cloud.Talent.V4beta1.ProfileQuery do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :query, 1, type: :string

  field :location_filters, 2,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.LocationFilter,
    json_name: "locationFilters"

  field :job_title_filters, 3,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.JobTitleFilter,
    json_name: "jobTitleFilters"

  field :employer_filters, 4,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.EmployerFilter,
    json_name: "employerFilters"

  field :education_filters, 5,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.EducationFilter,
    json_name: "educationFilters"

  field :skill_filters, 6,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.SkillFilter,
    json_name: "skillFilters"

  field :work_experience_filter, 7,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.WorkExperienceFilter,
    json_name: "workExperienceFilter"

  field :time_filters, 8,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.TimeFilter,
    json_name: "timeFilters"

  field :hirable_filter, 9, type: Google.Protobuf.BoolValue, json_name: "hirableFilter"

  field :application_date_filters, 10,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.ApplicationDateFilter,
    json_name: "applicationDateFilters"

  field :application_outcome_notes_filters, 11,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.ApplicationOutcomeNotesFilter,
    json_name: "applicationOutcomeNotesFilters"

  field :application_job_filters, 13,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.ApplicationJobFilter,
    json_name: "applicationJobFilters"

  field :custom_attribute_filter, 15, type: :string, json_name: "customAttributeFilter"

  field :candidate_availability_filter, 16,
    type: Google.Cloud.Talent.V4beta1.CandidateAvailabilityFilter,
    json_name: "candidateAvailabilityFilter",
    deprecated: true

  field :availability_filters, 18,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.AvailabilityFilter,
    json_name: "availabilityFilters"

  field :person_name_filters, 17,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.PersonNameFilter,
    json_name: "personNameFilters"
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
defmodule Google.Cloud.Talent.V4beta1.JobTitleFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :job_title, 1, type: :string, json_name: "jobTitle", deprecated: false
  field :negated, 2, type: :bool
end
defmodule Google.Cloud.Talent.V4beta1.SkillFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :skill, 1, type: :string, deprecated: false
  field :negated, 2, type: :bool
end
defmodule Google.Cloud.Talent.V4beta1.EmployerFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :employer, 1, type: :string, deprecated: false
  field :mode, 2, type: Google.Cloud.Talent.V4beta1.EmployerFilter.EmployerFilterMode, enum: true
  field :negated, 3, type: :bool
end
defmodule Google.Cloud.Talent.V4beta1.EducationFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :school, 1, type: :string
  field :field_of_study, 2, type: :string, json_name: "fieldOfStudy"

  field :degree_type, 3,
    type: Google.Cloud.Talent.V4beta1.DegreeType,
    json_name: "degreeType",
    enum: true

  field :negated, 6, type: :bool
end
defmodule Google.Cloud.Talent.V4beta1.WorkExperienceFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :min_experience, 1, type: Google.Protobuf.Duration, json_name: "minExperience"
  field :max_experience, 2, type: Google.Protobuf.Duration, json_name: "maxExperience"
end
defmodule Google.Cloud.Talent.V4beta1.ApplicationDateFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :start_date, 1, type: Google.Type.Date, json_name: "startDate"
  field :end_date, 2, type: Google.Type.Date, json_name: "endDate"
end
defmodule Google.Cloud.Talent.V4beta1.ApplicationOutcomeNotesFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :outcome_notes, 1, type: :string, json_name: "outcomeNotes", deprecated: false
  field :negated, 2, type: :bool
end
defmodule Google.Cloud.Talent.V4beta1.ApplicationJobFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :job_requisition_id, 2, type: :string, json_name: "jobRequisitionId"
  field :job_title, 3, type: :string, json_name: "jobTitle"
  field :negated, 4, type: :bool
end
defmodule Google.Cloud.Talent.V4beta1.TimeFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :time_field, 3,
    type: Google.Cloud.Talent.V4beta1.TimeFilter.TimeField,
    json_name: "timeField",
    enum: true
end
defmodule Google.Cloud.Talent.V4beta1.CandidateAvailabilityFilter do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :negated, 1, type: :bool
end
defmodule Google.Cloud.Talent.V4beta1.AvailabilityFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :signal_type, 1,
    type: Google.Cloud.Talent.V4beta1.AvailabilitySignalType,
    json_name: "signalType",
    enum: true,
    deprecated: false

  field :range, 2, type: Google.Cloud.Talent.V4beta1.TimestampRange, deprecated: false
  field :required, 3, type: :bool
end
defmodule Google.Cloud.Talent.V4beta1.PersonNameFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :person_name, 1, type: :string, json_name: "personName", deprecated: false
end
