defmodule Google.Cloud.Talent.V4beta1.LocationFilter.TelecommutePreference do
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
defmodule Google.Cloud.Talent.V4beta1.CompensationFilter.FilterType do
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
defmodule Google.Cloud.Talent.V4beta1.CommuteFilter.RoadTraffic do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ROAD_TRAFFIC_UNSPECIFIED | :TRAFFIC_FREE | :BUSY_HOUR

  field :ROAD_TRAFFIC_UNSPECIFIED, 0
  field :TRAFFIC_FREE, 1
  field :BUSY_HOUR, 2
end
defmodule Google.Cloud.Talent.V4beta1.EmployerFilter.EmployerFilterMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :EMPLOYER_FILTER_MODE_UNSPECIFIED
          | :ALL_EMPLOYMENT_RECORDS
          | :CURRENT_EMPLOYMENT_RECORDS_ONLY
          | :PAST_EMPLOYMENT_RECORDS_ONLY

  field :EMPLOYER_FILTER_MODE_UNSPECIFIED, 0
  field :ALL_EMPLOYMENT_RECORDS, 1
  field :CURRENT_EMPLOYMENT_RECORDS_ONLY, 2
  field :PAST_EMPLOYMENT_RECORDS_ONLY, 3
end
defmodule Google.Cloud.Talent.V4beta1.TimeFilter.TimeField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TIME_FIELD_UNSPECIFIED | :CREATE_TIME | :UPDATE_TIME

  field :TIME_FIELD_UNSPECIFIED, 0
  field :CREATE_TIME, 1
  field :UPDATE_TIME, 2
end
defmodule Google.Cloud.Talent.V4beta1.JobQuery do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t(),
          query_language_code: String.t(),
          companies: [String.t()],
          location_filters: [Google.Cloud.Talent.V4beta1.LocationFilter.t()],
          job_categories: [Google.Cloud.Talent.V4beta1.JobCategory.t()],
          commute_filter: Google.Cloud.Talent.V4beta1.CommuteFilter.t() | nil,
          company_display_names: [String.t()],
          compensation_filter: Google.Cloud.Talent.V4beta1.CompensationFilter.t() | nil,
          custom_attribute_filter: String.t(),
          disable_spell_check: boolean,
          employment_types: [Google.Cloud.Talent.V4beta1.EmploymentType.t()],
          language_codes: [String.t()],
          publish_time_range: Google.Cloud.Talent.V4beta1.TimestampRange.t() | nil,
          excluded_jobs: [String.t()]
        }

  defstruct query: "",
            query_language_code: "",
            companies: [],
            location_filters: [],
            job_categories: [],
            commute_filter: nil,
            company_display_names: [],
            compensation_filter: nil,
            custom_attribute_filter: "",
            disable_spell_check: false,
            employment_types: [],
            language_codes: [],
            publish_time_range: nil,
            excluded_jobs: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t(),
          location_filters: [Google.Cloud.Talent.V4beta1.LocationFilter.t()],
          job_title_filters: [Google.Cloud.Talent.V4beta1.JobTitleFilter.t()],
          employer_filters: [Google.Cloud.Talent.V4beta1.EmployerFilter.t()],
          education_filters: [Google.Cloud.Talent.V4beta1.EducationFilter.t()],
          skill_filters: [Google.Cloud.Talent.V4beta1.SkillFilter.t()],
          work_experience_filter: [Google.Cloud.Talent.V4beta1.WorkExperienceFilter.t()],
          time_filters: [Google.Cloud.Talent.V4beta1.TimeFilter.t()],
          hirable_filter: Google.Protobuf.BoolValue.t() | nil,
          application_date_filters: [Google.Cloud.Talent.V4beta1.ApplicationDateFilter.t()],
          application_outcome_notes_filters: [
            Google.Cloud.Talent.V4beta1.ApplicationOutcomeNotesFilter.t()
          ],
          application_job_filters: [Google.Cloud.Talent.V4beta1.ApplicationJobFilter.t()],
          custom_attribute_filter: String.t(),
          candidate_availability_filter:
            Google.Cloud.Talent.V4beta1.CandidateAvailabilityFilter.t() | nil,
          availability_filters: [Google.Cloud.Talent.V4beta1.AvailabilityFilter.t()],
          person_name_filters: [Google.Cloud.Talent.V4beta1.PersonNameFilter.t()]
        }

  defstruct query: "",
            location_filters: [],
            job_title_filters: [],
            employer_filters: [],
            education_filters: [],
            skill_filters: [],
            work_experience_filter: [],
            time_filters: [],
            hirable_filter: nil,
            application_date_filters: [],
            application_outcome_notes_filters: [],
            application_job_filters: [],
            custom_attribute_filter: "",
            candidate_availability_filter: nil,
            availability_filters: [],
            person_name_filters: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          address: String.t(),
          region_code: String.t(),
          lat_lng: Google.Type.LatLng.t() | nil,
          distance_in_miles: float | :infinity | :negative_infinity | :nan,
          telecommute_preference:
            Google.Cloud.Talent.V4beta1.LocationFilter.TelecommutePreference.t(),
          negated: boolean
        }

  defstruct address: "",
            region_code: "",
            lat_lng: nil,
            distance_in_miles: 0.0,
            telecommute_preference: :TELECOMMUTE_PREFERENCE_UNSPECIFIED,
            negated: false

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Talent.V4beta1.CompensationFilter.FilterType.t(),
          units: [Google.Cloud.Talent.V4beta1.CompensationInfo.CompensationUnit.t()],
          range: Google.Cloud.Talent.V4beta1.CompensationInfo.CompensationRange.t() | nil,
          include_jobs_with_unspecified_compensation_range: boolean
        }

  defstruct type: :FILTER_TYPE_UNSPECIFIED,
            units: [],
            range: nil,
            include_jobs_with_unspecified_compensation_range: false

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          traffic_option:
            {:road_traffic, Google.Cloud.Talent.V4beta1.CommuteFilter.RoadTraffic.t()}
            | {:departure_time, Google.Type.TimeOfDay.t() | nil},
          commute_method: Google.Cloud.Talent.V4beta1.CommuteMethod.t(),
          start_coordinates: Google.Type.LatLng.t() | nil,
          travel_duration: Google.Protobuf.Duration.t() | nil,
          allow_imprecise_addresses: boolean
        }

  defstruct traffic_option: nil,
            commute_method: :COMMUTE_METHOD_UNSPECIFIED,
            start_coordinates: nil,
            travel_duration: nil,
            allow_imprecise_addresses: false

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_title: String.t(),
          negated: boolean
        }

  defstruct job_title: "",
            negated: false

  field :job_title, 1, type: :string, json_name: "jobTitle", deprecated: false
  field :negated, 2, type: :bool
end
defmodule Google.Cloud.Talent.V4beta1.SkillFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          skill: String.t(),
          negated: boolean
        }

  defstruct skill: "",
            negated: false

  field :skill, 1, type: :string, deprecated: false
  field :negated, 2, type: :bool
end
defmodule Google.Cloud.Talent.V4beta1.EmployerFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          employer: String.t(),
          mode: Google.Cloud.Talent.V4beta1.EmployerFilter.EmployerFilterMode.t(),
          negated: boolean
        }

  defstruct employer: "",
            mode: :EMPLOYER_FILTER_MODE_UNSPECIFIED,
            negated: false

  field :employer, 1, type: :string, deprecated: false
  field :mode, 2, type: Google.Cloud.Talent.V4beta1.EmployerFilter.EmployerFilterMode, enum: true
  field :negated, 3, type: :bool
end
defmodule Google.Cloud.Talent.V4beta1.EducationFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          school: String.t(),
          field_of_study: String.t(),
          degree_type: Google.Cloud.Talent.V4beta1.DegreeType.t(),
          negated: boolean
        }

  defstruct school: "",
            field_of_study: "",
            degree_type: :DEGREE_TYPE_UNSPECIFIED,
            negated: false

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_experience: Google.Protobuf.Duration.t() | nil,
          max_experience: Google.Protobuf.Duration.t() | nil
        }

  defstruct min_experience: nil,
            max_experience: nil

  field :min_experience, 1, type: Google.Protobuf.Duration, json_name: "minExperience"
  field :max_experience, 2, type: Google.Protobuf.Duration, json_name: "maxExperience"
end
defmodule Google.Cloud.Talent.V4beta1.ApplicationDateFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_date: Google.Type.Date.t() | nil,
          end_date: Google.Type.Date.t() | nil
        }

  defstruct start_date: nil,
            end_date: nil

  field :start_date, 1, type: Google.Type.Date, json_name: "startDate"
  field :end_date, 2, type: Google.Type.Date, json_name: "endDate"
end
defmodule Google.Cloud.Talent.V4beta1.ApplicationOutcomeNotesFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          outcome_notes: String.t(),
          negated: boolean
        }

  defstruct outcome_notes: "",
            negated: false

  field :outcome_notes, 1, type: :string, json_name: "outcomeNotes", deprecated: false
  field :negated, 2, type: :bool
end
defmodule Google.Cloud.Talent.V4beta1.ApplicationJobFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_requisition_id: String.t(),
          job_title: String.t(),
          negated: boolean
        }

  defstruct job_requisition_id: "",
            job_title: "",
            negated: false

  field :job_requisition_id, 2, type: :string, json_name: "jobRequisitionId"
  field :job_title, 3, type: :string, json_name: "jobTitle"
  field :negated, 4, type: :bool
end
defmodule Google.Cloud.Talent.V4beta1.TimeFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          time_field: Google.Cloud.Talent.V4beta1.TimeFilter.TimeField.t()
        }

  defstruct start_time: nil,
            end_time: nil,
            time_field: :TIME_FIELD_UNSPECIFIED

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :time_field, 3,
    type: Google.Cloud.Talent.V4beta1.TimeFilter.TimeField,
    json_name: "timeField",
    enum: true
end
defmodule Google.Cloud.Talent.V4beta1.CandidateAvailabilityFilter do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          negated: boolean
        }

  defstruct negated: false

  field :negated, 1, type: :bool
end
defmodule Google.Cloud.Talent.V4beta1.AvailabilityFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          signal_type: Google.Cloud.Talent.V4beta1.AvailabilitySignalType.t(),
          range: Google.Cloud.Talent.V4beta1.TimestampRange.t() | nil,
          required: boolean
        }

  defstruct signal_type: :AVAILABILITY_SIGNAL_TYPE_UNSPECIFIED,
            range: nil,
            required: false

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          person_name: String.t()
        }

  defstruct person_name: ""

  field :person_name, 1, type: :string, json_name: "personName", deprecated: false
end
