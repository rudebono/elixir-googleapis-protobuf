defmodule Google.Cloud.Talent.V4.Job.ApplicationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          emails: [String.t()],
          instruction: String.t(),
          uris: [String.t()]
        }

  defstruct [:emails, :instruction, :uris]

  field :emails, 1, repeated: true, type: :string
  field :instruction, 2, type: :string
  field :uris, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Talent.V4.Job.DerivedInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          locations: [Google.Cloud.Talent.V4.Location.t()],
          job_categories: [Google.Cloud.Talent.V4.JobCategory.t()]
        }

  defstruct [:locations, :job_categories]

  field :locations, 1, repeated: true, type: Google.Cloud.Talent.V4.Location

  field :job_categories, 3,
    repeated: true,
    type: Google.Cloud.Talent.V4.JobCategory,
    enum: true,
    json_name: "jobCategories"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Talent.V4.Job.ProcessingOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disable_street_address_resolution: boolean,
          html_sanitization: Google.Cloud.Talent.V4.HtmlSanitization.t()
        }

  defstruct [:disable_street_address_resolution, :html_sanitization]

  field :disable_street_address_resolution, 1,
    type: :bool,
    json_name: "disableStreetAddressResolution"

  field :html_sanitization, 2,
    type: Google.Cloud.Talent.V4.HtmlSanitization,
    enum: true,
    json_name: "htmlSanitization"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Talent.V4.Job.CustomAttributesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Talent.V4.CustomAttribute.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Talent.V4.CustomAttribute

  def transform_module(), do: nil
end

defmodule Google.Cloud.Talent.V4.Job do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          company: String.t(),
          requisition_id: String.t(),
          title: String.t(),
          description: String.t(),
          addresses: [String.t()],
          application_info: Google.Cloud.Talent.V4.Job.ApplicationInfo.t() | nil,
          job_benefits: [Google.Cloud.Talent.V4.JobBenefit.t()],
          compensation_info: Google.Cloud.Talent.V4.CompensationInfo.t() | nil,
          custom_attributes: %{String.t() => Google.Cloud.Talent.V4.CustomAttribute.t() | nil},
          degree_types: [Google.Cloud.Talent.V4.DegreeType.t()],
          department: String.t(),
          employment_types: [Google.Cloud.Talent.V4.EmploymentType.t()],
          incentives: String.t(),
          language_code: String.t(),
          job_level: Google.Cloud.Talent.V4.JobLevel.t(),
          promotion_value: integer,
          qualifications: String.t(),
          responsibilities: String.t(),
          posting_region: Google.Cloud.Talent.V4.PostingRegion.t(),
          visibility: Google.Cloud.Talent.V4.Visibility.t(),
          job_start_time: Google.Protobuf.Timestamp.t() | nil,
          job_end_time: Google.Protobuf.Timestamp.t() | nil,
          posting_publish_time: Google.Protobuf.Timestamp.t() | nil,
          posting_expire_time: Google.Protobuf.Timestamp.t() | nil,
          posting_create_time: Google.Protobuf.Timestamp.t() | nil,
          posting_update_time: Google.Protobuf.Timestamp.t() | nil,
          company_display_name: String.t(),
          derived_info: Google.Cloud.Talent.V4.Job.DerivedInfo.t() | nil,
          processing_options: Google.Cloud.Talent.V4.Job.ProcessingOptions.t() | nil
        }

  defstruct [
    :name,
    :company,
    :requisition_id,
    :title,
    :description,
    :addresses,
    :application_info,
    :job_benefits,
    :compensation_info,
    :custom_attributes,
    :degree_types,
    :department,
    :employment_types,
    :incentives,
    :language_code,
    :job_level,
    :promotion_value,
    :qualifications,
    :responsibilities,
    :posting_region,
    :visibility,
    :job_start_time,
    :job_end_time,
    :posting_publish_time,
    :posting_expire_time,
    :posting_create_time,
    :posting_update_time,
    :company_display_name,
    :derived_info,
    :processing_options
  ]

  field :name, 1, type: :string
  field :company, 2, type: :string
  field :requisition_id, 3, type: :string, json_name: "requisitionId"
  field :title, 4, type: :string
  field :description, 5, type: :string
  field :addresses, 6, repeated: true, type: :string

  field :application_info, 7,
    type: Google.Cloud.Talent.V4.Job.ApplicationInfo,
    json_name: "applicationInfo"

  field :job_benefits, 8,
    repeated: true,
    type: Google.Cloud.Talent.V4.JobBenefit,
    enum: true,
    json_name: "jobBenefits"

  field :compensation_info, 9,
    type: Google.Cloud.Talent.V4.CompensationInfo,
    json_name: "compensationInfo"

  field :custom_attributes, 10,
    repeated: true,
    type: Google.Cloud.Talent.V4.Job.CustomAttributesEntry,
    json_name: "customAttributes",
    map: true

  field :degree_types, 11,
    repeated: true,
    type: Google.Cloud.Talent.V4.DegreeType,
    enum: true,
    json_name: "degreeTypes"

  field :department, 12, type: :string

  field :employment_types, 13,
    repeated: true,
    type: Google.Cloud.Talent.V4.EmploymentType,
    enum: true,
    json_name: "employmentTypes"

  field :incentives, 14, type: :string
  field :language_code, 15, type: :string, json_name: "languageCode"
  field :job_level, 16, type: Google.Cloud.Talent.V4.JobLevel, enum: true, json_name: "jobLevel"
  field :promotion_value, 17, type: :int32, json_name: "promotionValue"
  field :qualifications, 18, type: :string
  field :responsibilities, 19, type: :string

  field :posting_region, 20,
    type: Google.Cloud.Talent.V4.PostingRegion,
    enum: true,
    json_name: "postingRegion"

  field :visibility, 21, type: Google.Cloud.Talent.V4.Visibility, deprecated: true, enum: true
  field :job_start_time, 22, type: Google.Protobuf.Timestamp, json_name: "jobStartTime"
  field :job_end_time, 23, type: Google.Protobuf.Timestamp, json_name: "jobEndTime"

  field :posting_publish_time, 24,
    type: Google.Protobuf.Timestamp,
    json_name: "postingPublishTime"

  field :posting_expire_time, 25, type: Google.Protobuf.Timestamp, json_name: "postingExpireTime"
  field :posting_create_time, 26, type: Google.Protobuf.Timestamp, json_name: "postingCreateTime"
  field :posting_update_time, 27, type: Google.Protobuf.Timestamp, json_name: "postingUpdateTime"
  field :company_display_name, 28, type: :string, json_name: "companyDisplayName"
  field :derived_info, 29, type: Google.Cloud.Talent.V4.Job.DerivedInfo, json_name: "derivedInfo"

  field :processing_options, 30,
    type: Google.Cloud.Talent.V4.Job.ProcessingOptions,
    json_name: "processingOptions"

  def transform_module(), do: nil
end
