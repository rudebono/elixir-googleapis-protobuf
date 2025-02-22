defmodule Google.Cloud.Cloudsetup.Logging.V1.CompleteDeploymentEvent.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
end

defmodule Google.Cloud.Cloudsetup.Logging.V1.CompleteDeploymentEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :result, 0

  field :value, 1, type: Google.Cloud.Cloudsetup.Logging.V1.CompleteDeploymentResult, oneof: 0
  field :error, 2, type: Google.Rpc.Status, oneof: 0

  field :state, 3,
    type: Google.Cloud.Cloudsetup.Logging.V1.CompleteDeploymentEvent.State,
    enum: true

  field :preview_only, 4, type: :bool, json_name: "previewOnly"
end

defmodule Google.Cloud.Cloudsetup.Logging.V1.CompleteDeploymentResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :deployment, 1, type: :string, deprecated: false
  field :preview, 3, type: :string, deprecated: false
  field :message, 2, type: :string
end
