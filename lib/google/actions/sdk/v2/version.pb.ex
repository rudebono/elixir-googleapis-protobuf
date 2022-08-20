defmodule Google.Actions.Sdk.V2.Version.VersionState.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATION_IN_PROGRESS, 1
  field :CREATION_FAILED, 2
  field :CREATED, 3
  field :REVIEW_IN_PROGRESS, 4
  field :APPROVED, 5
  field :CONDITIONALLY_APPROVED, 6
  field :DENIED, 7
  field :UNDER_TAKEDOWN, 8
  field :DELETED, 9
end

defmodule Google.Actions.Sdk.V2.Version.VersionState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state, 1, type: Google.Actions.Sdk.V2.Version.VersionState.State, enum: true
  field :message, 2, type: :string
end

defmodule Google.Actions.Sdk.V2.Version do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string

  field :version_state, 2,
    type: Google.Actions.Sdk.V2.Version.VersionState,
    json_name: "versionState"

  field :creator, 3, type: :string
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end