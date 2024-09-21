defmodule Google.Cloud.Talent.V4beta1.Job.ApplicationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :emails, 1, repeated: true, type: :string
  field :instruction, 2, type: :string
  field :uris, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Talent.V4beta1.Job.DerivedInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :locations, 1, repeated: true, type: Google.Cloud.Talent.V4beta1.Location

  field :job_categories, 3,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.JobCategory,
    json_name: "jobCategories",
    enum: true
end

defmodule Google.Cloud.Talent.V4beta1.Job.ProcessingOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :disable_street_address_resolution, 1,
    type: :bool,
    json_name: "disableStreetAddressResolution"

  field :html_sanitization, 2,
    type: Google.Cloud.Talent.V4beta1.HtmlSanitization,
    json_name: "htmlSanitization",
    enum: true
end

defmodule Google.Cloud.Talent.V4beta1.Job.CustomAttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Talent.V4beta1.CustomAttribute
end

defmodule Google.Cloud.Talent.V4beta1.Job do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :company, 2, type: :string, deprecated: false
  field :requisition_id, 3, type: :string, json_name: "requisitionId", deprecated: false
  field :title, 4, type: :string, deprecated: false
  field :description, 5, type: :string, deprecated: false
  field :addresses, 6, repeated: true, type: :string

  field :application_info, 7,
    type: Google.Cloud.Talent.V4beta1.Job.ApplicationInfo,
    json_name: "applicationInfo"

  field :job_benefits, 8,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.JobBenefit,
    json_name: "jobBenefits",
    enum: true

  field :compensation_info, 9,
    type: Google.Cloud.Talent.V4beta1.CompensationInfo,
    json_name: "compensationInfo"

  field :custom_attributes, 10,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.Job.CustomAttributesEntry,
    json_name: "customAttributes",
    map: true

  field :degree_types, 11,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.DegreeType,
    json_name: "degreeTypes",
    enum: true

  field :department, 12, type: :string

  field :employment_types, 13,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.EmploymentType,
    json_name: "employmentTypes",
    enum: true

  field :incentives, 14, type: :string
  field :language_code, 15, type: :string, json_name: "languageCode"

  field :job_level, 16,
    type: Google.Cloud.Talent.V4beta1.JobLevel,
    json_name: "jobLevel",
    enum: true

  field :promotion_value, 17, type: :int32, json_name: "promotionValue"
  field :qualifications, 18, type: :string
  field :responsibilities, 19, type: :string

  field :posting_region, 20,
    type: Google.Cloud.Talent.V4beta1.PostingRegion,
    json_name: "postingRegion",
    enum: true

  field :visibility, 21,
    type: Google.Cloud.Talent.V4beta1.Visibility,
    enum: true,
    deprecated: true

  field :job_start_time, 22, type: Google.Protobuf.Timestamp, json_name: "jobStartTime"
  field :job_end_time, 23, type: Google.Protobuf.Timestamp, json_name: "jobEndTime"

  field :posting_publish_time, 24,
    type: Google.Protobuf.Timestamp,
    json_name: "postingPublishTime"

  field :posting_expire_time, 25, type: Google.Protobuf.Timestamp, json_name: "postingExpireTime"

  field :posting_create_time, 26,
    type: Google.Protobuf.Timestamp,
    json_name: "postingCreateTime",
    deprecated: false

  field :posting_update_time, 27,
    type: Google.Protobuf.Timestamp,
    json_name: "postingUpdateTime",
    deprecated: false

  field :company_display_name, 28,
    type: :string,
    json_name: "companyDisplayName",
    deprecated: false

  field :derived_info, 29,
    type: Google.Cloud.Talent.V4beta1.Job.DerivedInfo,
    json_name: "derivedInfo",
    deprecated: false

  field :processing_options, 30,
    type: Google.Cloud.Talent.V4beta1.Job.ProcessingOptions,
    json_name: "processingOptions"
end