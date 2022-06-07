defmodule Google.Cloud.Batch.V1.Volume do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :source, 0

  field :nfs, 1, type: Google.Cloud.Batch.V1.NFS, oneof: 0
  field :gcs, 3, type: Google.Cloud.Batch.V1.GCS, oneof: 0
  field :device_name, 6, type: :string, json_name: "deviceName", oneof: 0
  field :mount_path, 4, type: :string, json_name: "mountPath"
  field :mount_options, 5, repeated: true, type: :string, json_name: "mountOptions"
end
defmodule Google.Cloud.Batch.V1.NFS do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :server, 1, type: :string
  field :remote_path, 2, type: :string, json_name: "remotePath"
end
defmodule Google.Cloud.Batch.V1.GCS do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :remote_path, 1, type: :string, json_name: "remotePath"
end
