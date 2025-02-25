defmodule Google.Cloud.Talent.V4beta1.CompanySize do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :COMPANY_SIZE_UNSPECIFIED, 0
  field :MINI, 1
  field :SMALL, 2
  field :SMEDIUM, 3
  field :MEDIUM, 4
  field :BIG, 5
  field :BIGGER, 6
  field :GIANT, 7
end

defmodule Google.Cloud.Talent.V4beta1.JobBenefit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :JOB_BENEFIT_UNSPECIFIED, 0
  field :CHILD_CARE, 1
  field :DENTAL, 2
  field :DOMESTIC_PARTNER, 3
  field :FLEXIBLE_HOURS, 4
  field :MEDICAL, 5
  field :LIFE_INSURANCE, 6
  field :PARENTAL_LEAVE, 7
  field :RETIREMENT_PLAN, 8
  field :SICK_DAYS, 9
  field :VACATION, 10
  field :VISION, 11
end

defmodule Google.Cloud.Talent.V4beta1.DegreeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DEGREE_TYPE_UNSPECIFIED, 0
  field :PRIMARY_EDUCATION, 1
  field :LOWER_SECONDARY_EDUCATION, 2
  field :UPPER_SECONDARY_EDUCATION, 3
  field :ADULT_REMEDIAL_EDUCATION, 4
  field :ASSOCIATES_OR_EQUIVALENT, 5
  field :BACHELORS_OR_EQUIVALENT, 6
  field :MASTERS_OR_EQUIVALENT, 7
  field :DOCTORAL_OR_EQUIVALENT, 8
end

defmodule Google.Cloud.Talent.V4beta1.EmploymentType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :EMPLOYMENT_TYPE_UNSPECIFIED, 0
  field :FULL_TIME, 1
  field :PART_TIME, 2
  field :CONTRACTOR, 3
  field :CONTRACT_TO_HIRE, 4
  field :TEMPORARY, 5
  field :INTERN, 6
  field :VOLUNTEER, 7
  field :PER_DIEM, 8
  field :FLY_IN_FLY_OUT, 9
  field :OTHER_EMPLOYMENT_TYPE, 10
end

defmodule Google.Cloud.Talent.V4beta1.JobLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :JOB_LEVEL_UNSPECIFIED, 0
  field :ENTRY_LEVEL, 1
  field :EXPERIENCED, 2
  field :MANAGER, 3
  field :DIRECTOR, 4
  field :EXECUTIVE, 5
end

defmodule Google.Cloud.Talent.V4beta1.JobCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :JOB_CATEGORY_UNSPECIFIED, 0
  field :ACCOUNTING_AND_FINANCE, 1
  field :ADMINISTRATIVE_AND_OFFICE, 2
  field :ADVERTISING_AND_MARKETING, 3
  field :ANIMAL_CARE, 4
  field :ART_FASHION_AND_DESIGN, 5
  field :BUSINESS_OPERATIONS, 6
  field :CLEANING_AND_FACILITIES, 7
  field :COMPUTER_AND_IT, 8
  field :CONSTRUCTION, 9
  field :CUSTOMER_SERVICE, 10
  field :EDUCATION, 11
  field :ENTERTAINMENT_AND_TRAVEL, 12
  field :FARMING_AND_OUTDOORS, 13
  field :HEALTHCARE, 14
  field :HUMAN_RESOURCES, 15
  field :INSTALLATION_MAINTENANCE_AND_REPAIR, 16
  field :LEGAL, 17
  field :MANAGEMENT, 18
  field :MANUFACTURING_AND_WAREHOUSE, 19
  field :MEDIA_COMMUNICATIONS_AND_WRITING, 20
  field :OIL_GAS_AND_MINING, 21
  field :PERSONAL_CARE_AND_SERVICES, 22
  field :PROTECTIVE_SERVICES, 23
  field :REAL_ESTATE, 24
  field :RESTAURANT_AND_HOSPITALITY, 25
  field :SALES_AND_RETAIL, 26
  field :SCIENCE_AND_ENGINEERING, 27
  field :SOCIAL_SERVICES_AND_NON_PROFIT, 28
  field :SPORTS_FITNESS_AND_RECREATION, 29
  field :TRANSPORTATION_AND_LOGISTICS, 30
end

defmodule Google.Cloud.Talent.V4beta1.PostingRegion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :POSTING_REGION_UNSPECIFIED, 0
  field :ADMINISTRATIVE_AREA, 1
  field :NATION, 2
  field :TELECOMMUTE, 3
end

defmodule Google.Cloud.Talent.V4beta1.Visibility do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :VISIBILITY_UNSPECIFIED, 0
  field :ACCOUNT_ONLY, 1
  field :SHARED_WITH_GOOGLE, 2
  field :SHARED_WITH_PUBLIC, 3
end

defmodule Google.Cloud.Talent.V4beta1.HtmlSanitization do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :HTML_SANITIZATION_UNSPECIFIED, 0
  field :HTML_SANITIZATION_DISABLED, 1
  field :SIMPLE_FORMATTING_ONLY, 2
end

defmodule Google.Cloud.Talent.V4beta1.CommuteMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :COMMUTE_METHOD_UNSPECIFIED, 0
  field :DRIVING, 1
  field :TRANSIT, 2
  field :WALKING, 3
  field :CYCLING, 4
end

defmodule Google.Cloud.Talent.V4beta1.Location.LocationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LOCATION_TYPE_UNSPECIFIED, 0
  field :COUNTRY, 1
  field :ADMINISTRATIVE_AREA, 2
  field :SUB_ADMINISTRATIVE_AREA, 3
  field :LOCALITY, 4
  field :POSTAL_CODE, 5
  field :SUB_LOCALITY, 6
  field :SUB_LOCALITY_1, 7
  field :SUB_LOCALITY_2, 8
  field :NEIGHBORHOOD, 9
  field :STREET_ADDRESS, 10
end

defmodule Google.Cloud.Talent.V4beta1.DeviceInfo.DeviceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DEVICE_TYPE_UNSPECIFIED, 0
  field :WEB, 1
  field :MOBILE_WEB, 2
  field :ANDROID, 3
  field :IOS, 4
  field :BOT, 5
  field :OTHER, 6
end

defmodule Google.Cloud.Talent.V4beta1.CompensationInfo.CompensationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :COMPENSATION_TYPE_UNSPECIFIED, 0
  field :BASE, 1
  field :BONUS, 2
  field :SIGNING_BONUS, 3
  field :EQUITY, 4
  field :PROFIT_SHARING, 5
  field :COMMISSIONS, 6
  field :TIPS, 7
  field :OTHER_COMPENSATION_TYPE, 8
end

defmodule Google.Cloud.Talent.V4beta1.CompensationInfo.CompensationUnit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :COMPENSATION_UNIT_UNSPECIFIED, 0
  field :HOURLY, 1
  field :DAILY, 2
  field :WEEKLY, 3
  field :MONTHLY, 4
  field :YEARLY, 5
  field :ONE_TIME, 6
  field :OTHER_COMPENSATION_UNIT, 7
end

defmodule Google.Cloud.Talent.V4beta1.BatchOperationMetadata.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :INITIALIZING, 1
  field :PROCESSING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :CANCELLING, 5
  field :CANCELLED, 6
end

defmodule Google.Cloud.Talent.V4beta1.TimestampRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Talent.V4beta1.Location do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :location_type, 1,
    type: Google.Cloud.Talent.V4beta1.Location.LocationType,
    json_name: "locationType",
    enum: true

  field :postal_address, 2, type: Google.Type.PostalAddress, json_name: "postalAddress"
  field :lat_lng, 3, type: Google.Type.LatLng, json_name: "latLng"
  field :radius_miles, 4, type: :double, json_name: "radiusMiles"
end

defmodule Google.Cloud.Talent.V4beta1.RequestMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :domain, 1, type: :string
  field :session_id, 2, type: :string, json_name: "sessionId"
  field :user_id, 3, type: :string, json_name: "userId"
  field :allow_missing_ids, 4, type: :bool, json_name: "allowMissingIds"
  field :device_info, 5, type: Google.Cloud.Talent.V4beta1.DeviceInfo, json_name: "deviceInfo"
end

defmodule Google.Cloud.Talent.V4beta1.ResponseMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Talent.V4beta1.DeviceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :device_type, 1,
    type: Google.Cloud.Talent.V4beta1.DeviceInfo.DeviceType,
    json_name: "deviceType",
    enum: true

  field :id, 2, type: :string
end

defmodule Google.Cloud.Talent.V4beta1.CustomAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :string_values, 1, repeated: true, type: :string, json_name: "stringValues"
  field :long_values, 2, repeated: true, type: :int64, json_name: "longValues"
  field :filterable, 3, type: :bool
  field :keyword_searchable, 4, type: :bool, json_name: "keywordSearchable"
end

defmodule Google.Cloud.Talent.V4beta1.SpellingCorrection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :corrected, 1, type: :bool
  field :corrected_text, 2, type: :string, json_name: "correctedText"
  field :corrected_html, 3, type: :string, json_name: "correctedHtml"
end

defmodule Google.Cloud.Talent.V4beta1.CompensationInfo.CompensationEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :compensation_amount, 0

  field :type, 1, type: Google.Cloud.Talent.V4beta1.CompensationInfo.CompensationType, enum: true
  field :unit, 2, type: Google.Cloud.Talent.V4beta1.CompensationInfo.CompensationUnit, enum: true
  field :amount, 3, type: Google.Type.Money, oneof: 0
  field :range, 4, type: Google.Cloud.Talent.V4beta1.CompensationInfo.CompensationRange, oneof: 0
  field :description, 5, type: :string

  field :expected_units_per_year, 6,
    type: Google.Protobuf.DoubleValue,
    json_name: "expectedUnitsPerYear"
end

defmodule Google.Cloud.Talent.V4beta1.CompensationInfo.CompensationRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :max_compensation, 2, type: Google.Type.Money, json_name: "maxCompensation"
  field :min_compensation, 1, type: Google.Type.Money, json_name: "minCompensation"
end

defmodule Google.Cloud.Talent.V4beta1.CompensationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entries, 1,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.CompensationInfo.CompensationEntry

  field :annualized_base_compensation_range, 2,
    type: Google.Cloud.Talent.V4beta1.CompensationInfo.CompensationRange,
    json_name: "annualizedBaseCompensationRange",
    deprecated: false

  field :annualized_total_compensation_range, 3,
    type: Google.Cloud.Talent.V4beta1.CompensationInfo.CompensationRange,
    json_name: "annualizedTotalCompensationRange",
    deprecated: false
end

defmodule Google.Cloud.Talent.V4beta1.BatchOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :state, 1, type: Google.Cloud.Talent.V4beta1.BatchOperationMetadata.State, enum: true
  field :state_description, 2, type: :string, json_name: "stateDescription"
  field :success_count, 3, type: :int32, json_name: "successCount"
  field :failure_count, 4, type: :int32, json_name: "failureCount"
  field :total_count, 5, type: :int32, json_name: "totalCount"
  field :create_time, 6, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 7, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :end_time, 8, type: Google.Protobuf.Timestamp, json_name: "endTime"
end
