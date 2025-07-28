defmodule Google.Cloud.Channel.V1.EduData.InstituteType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :INSTITUTE_TYPE_UNSPECIFIED, 0
  field :K12, 1
  field :UNIVERSITY, 2
end

defmodule Google.Cloud.Channel.V1.EduData.InstituteSize do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :INSTITUTE_SIZE_UNSPECIFIED, 0
  field :SIZE_1_100, 1
  field :SIZE_101_500, 2
  field :SIZE_501_1000, 3
  field :SIZE_1001_2000, 4
  field :SIZE_2001_5000, 5
  field :SIZE_5001_10000, 6
  field :SIZE_10001_OR_MORE, 7
end

defmodule Google.Cloud.Channel.V1.CloudIdentityInfo.CustomerType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CUSTOMER_TYPE_UNSPECIFIED, 0
  field :DOMAIN, 1
  field :TEAM, 2
end

defmodule Google.Cloud.Channel.V1.EduData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :institute_type, 1,
    type: Google.Cloud.Channel.V1.EduData.InstituteType,
    json_name: "instituteType",
    enum: true

  field :institute_size, 2,
    type: Google.Cloud.Channel.V1.EduData.InstituteSize,
    json_name: "instituteSize",
    enum: true

  field :website, 3, type: :string
end

defmodule Google.Cloud.Channel.V1.CloudIdentityInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_type, 1,
    type: Google.Cloud.Channel.V1.CloudIdentityInfo.CustomerType,
    json_name: "customerType",
    enum: true

  field :primary_domain, 9, type: :string, json_name: "primaryDomain", deprecated: false
  field :is_domain_verified, 4, type: :bool, json_name: "isDomainVerified", deprecated: false
  field :alternate_email, 6, type: :string, json_name: "alternateEmail"
  field :phone_number, 7, type: :string, json_name: "phoneNumber"
  field :language_code, 8, type: :string, json_name: "languageCode"
  field :admin_console_uri, 10, type: :string, json_name: "adminConsoleUri", deprecated: false
  field :edu_data, 22, type: Google.Cloud.Channel.V1.EduData, json_name: "eduData"
end

defmodule Google.Cloud.Channel.V1.Value do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :int64_value, 1, type: :int64, json_name: "int64Value", oneof: 0
  field :string_value, 2, type: :string, json_name: "stringValue", oneof: 0
  field :double_value, 3, type: :double, json_name: "doubleValue", oneof: 0
  field :proto_value, 4, type: Google.Protobuf.Any, json_name: "protoValue", oneof: 0
  field :bool_value, 5, type: :bool, json_name: "boolValue", oneof: 0
end

defmodule Google.Cloud.Channel.V1.AdminUser do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :email, 1, type: :string
  field :given_name, 2, type: :string, json_name: "givenName"
  field :family_name, 3, type: :string, json_name: "familyName"
end
