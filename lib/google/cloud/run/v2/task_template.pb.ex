defmodule Google.Cloud.Run.V2.TaskTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :retries, 0

  field :containers, 1, repeated: true, type: Google.Cloud.Run.V2.Container
  field :volumes, 2, repeated: true, type: Google.Cloud.Run.V2.Volume, deprecated: false
  field :max_retries, 3, type: :int32, json_name: "maxRetries", oneof: 0
  field :timeout, 4, type: Google.Protobuf.Duration, deprecated: false
  field :service_account, 5, type: :string, json_name: "serviceAccount", deprecated: false

  field :execution_environment, 6,
    type: Google.Cloud.Run.V2.ExecutionEnvironment,
    json_name: "executionEnvironment",
    enum: true,
    deprecated: false

  field :encryption_key, 7, type: :string, json_name: "encryptionKey", deprecated: false

  field :vpc_access, 8,
    type: Google.Cloud.Run.V2.VpcAccess,
    json_name: "vpcAccess",
    deprecated: false
end