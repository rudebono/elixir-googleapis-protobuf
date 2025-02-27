defmodule Google.Ads.Googleads.V19.Resources.LocalServicesEmployee do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, proto3_optional: true, type: :int64, deprecated: false
  field :creation_date_time, 3, type: :string, json_name: "creationDateTime", deprecated: false

  field :status, 4,
    type:
      Google.Ads.Googleads.V19.Enums.LocalServicesEmployeeStatusEnum.LocalServicesEmployeeStatus,
    enum: true,
    deprecated: false

  field :type, 5,
    type: Google.Ads.Googleads.V19.Enums.LocalServicesEmployeeTypeEnum.LocalServicesEmployeeType,
    enum: true,
    deprecated: false

  field :university_degrees, 6,
    repeated: true,
    type: Google.Ads.Googleads.V19.Resources.UniversityDegree,
    json_name: "universityDegrees",
    deprecated: false

  field :residencies, 7,
    repeated: true,
    type: Google.Ads.Googleads.V19.Resources.Residency,
    deprecated: false

  field :fellowships, 8,
    repeated: true,
    type: Google.Ads.Googleads.V19.Resources.Fellowship,
    deprecated: false

  field :job_title, 9,
    proto3_optional: true,
    type: :string,
    json_name: "jobTitle",
    deprecated: false

  field :year_started_practicing, 10,
    proto3_optional: true,
    type: :int32,
    json_name: "yearStartedPracticing",
    deprecated: false

  field :languages_spoken, 11,
    repeated: true,
    type: :string,
    json_name: "languagesSpoken",
    deprecated: false

  field :category_ids, 12,
    repeated: true,
    type: :string,
    json_name: "categoryIds",
    deprecated: false

  field :national_provider_id_number, 13,
    proto3_optional: true,
    type: :string,
    json_name: "nationalProviderIdNumber",
    deprecated: false

  field :email_address, 14,
    proto3_optional: true,
    type: :string,
    json_name: "emailAddress",
    deprecated: false

  field :first_name, 15,
    proto3_optional: true,
    type: :string,
    json_name: "firstName",
    deprecated: false

  field :middle_name, 16,
    proto3_optional: true,
    type: :string,
    json_name: "middleName",
    deprecated: false

  field :last_name, 17,
    proto3_optional: true,
    type: :string,
    json_name: "lastName",
    deprecated: false
end

defmodule Google.Ads.Googleads.V19.Resources.UniversityDegree do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :institution_name, 1,
    proto3_optional: true,
    type: :string,
    json_name: "institutionName",
    deprecated: false

  field :degree, 2, proto3_optional: true, type: :string, deprecated: false

  field :graduation_year, 3,
    proto3_optional: true,
    type: :int32,
    json_name: "graduationYear",
    deprecated: false
end

defmodule Google.Ads.Googleads.V19.Resources.Residency do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :institution_name, 1,
    proto3_optional: true,
    type: :string,
    json_name: "institutionName",
    deprecated: false

  field :completion_year, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "completionYear",
    deprecated: false
end

defmodule Google.Ads.Googleads.V19.Resources.Fellowship do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :institution_name, 1,
    proto3_optional: true,
    type: :string,
    json_name: "institutionName",
    deprecated: false

  field :completion_year, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "completionYear",
    deprecated: false
end
