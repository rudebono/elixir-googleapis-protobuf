defmodule Google.Cloud.Gkebackup.V1.RestoreChannel.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkebackup.V1.RestoreChannel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :destination_project, 2, type: :string, json_name: "destinationProject", deprecated: false
  field :uid, 3, type: :string, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.RestoreChannel.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 7, type: :string, deprecated: false
  field :etag, 8, type: :string, deprecated: false

  field :destination_project_id, 9,
    type: :string,
    json_name: "destinationProjectId",
    deprecated: false
end
