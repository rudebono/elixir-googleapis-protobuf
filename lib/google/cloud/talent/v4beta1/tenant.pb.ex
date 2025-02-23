defmodule Google.Cloud.Talent.V4beta1.Tenant.DataUsageType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DATA_USAGE_TYPE_UNSPECIFIED, 0
  field :AGGREGATED, 1
  field :ISOLATED, 2
end

defmodule Google.Cloud.Talent.V4beta1.Tenant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :external_id, 2, type: :string, json_name: "externalId", deprecated: false

  field :usage_type, 3,
    type: Google.Cloud.Talent.V4beta1.Tenant.DataUsageType,
    json_name: "usageType",
    enum: true

  field :keyword_searchable_profile_custom_attributes, 4,
    repeated: true,
    type: :string,
    json_name: "keywordSearchableProfileCustomAttributes"
end
