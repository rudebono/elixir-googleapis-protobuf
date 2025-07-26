defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedBackupChannel.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedBackupChannel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :destination_project, 1, type: :string, json_name: "destinationProject"

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Gkebackup.Logging.V1.LoggedBackupChannel.LabelsEntry,
    map: true

  field :description, 3, type: :string
end
