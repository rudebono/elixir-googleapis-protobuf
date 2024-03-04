defmodule Google.Cloud.Apphub.V1.Application.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
end

defmodule Google.Cloud.Apphub.V1.Scope.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :REGIONAL, 1
end

defmodule Google.Cloud.Apphub.V1.Application do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :attributes, 4, type: Google.Cloud.Apphub.V1.Attributes, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :scope, 9, type: Google.Cloud.Apphub.V1.Scope, deprecated: false
  field :uid, 10, type: :string, deprecated: false
  field :state, 11, type: Google.Cloud.Apphub.V1.Application.State, enum: true, deprecated: false
end

defmodule Google.Cloud.Apphub.V1.Scope do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Apphub.V1.Scope.Type, enum: true, deprecated: false
end