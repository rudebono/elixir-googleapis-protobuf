defmodule Google.Firestore.Admin.V1.UserCreds.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
end

defmodule Google.Firestore.Admin.V1.UserCreds.ResourceIdentity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :principal, 1, type: :string, deprecated: false
end

defmodule Google.Firestore.Admin.V1.UserCreds do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :UserCredsIdentity, 0

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 4, type: Google.Firestore.Admin.V1.UserCreds.State, enum: true, deprecated: false
  field :secure_password, 5, type: :string, json_name: "securePassword", deprecated: false

  field :resource_identity, 6,
    type: Google.Firestore.Admin.V1.UserCreds.ResourceIdentity,
    json_name: "resourceIdentity",
    oneof: 0
end
