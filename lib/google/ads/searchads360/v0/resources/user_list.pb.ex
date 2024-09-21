defmodule Google.Ads.Searchads360.V0.Resources.UserList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 25, proto3_optional: true, type: :int64, deprecated: false
  field :name, 27, proto3_optional: true, type: :string

  field :type, 13,
    type: Google.Ads.Searchads360.V0.Enums.UserListTypeEnum.UserListType,
    enum: true,
    deprecated: false
end