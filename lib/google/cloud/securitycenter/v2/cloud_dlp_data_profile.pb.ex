defmodule Google.Cloud.Securitycenter.V2.CloudDlpDataProfile.ParentType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PARENT_TYPE_UNSPECIFIED, 0
  field :ORGANIZATION, 1
  field :PROJECT, 2
end

defmodule Google.Cloud.Securitycenter.V2.CloudDlpDataProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :data_profile, 1, type: :string, json_name: "dataProfile", deprecated: false

  field :parent_type, 2,
    type: Google.Cloud.Securitycenter.V2.CloudDlpDataProfile.ParentType,
    json_name: "parentType",
    enum: true
end