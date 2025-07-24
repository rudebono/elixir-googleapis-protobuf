defmodule Google.Cloud.Baremetalsolution.V2.VolumeSnapshot.SnapshotType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SNAPSHOT_TYPE_UNSPECIFIED, 0
  field :AD_HOC, 1
  field :SCHEDULED, 2
end

defmodule Google.Cloud.Baremetalsolution.V2.VolumeSnapshot do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :id, 6, type: :string, deprecated: false
  field :description, 2, type: :string

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :storage_volume, 5, type: :string, json_name: "storageVolume", deprecated: false

  field :type, 7,
    type: Google.Cloud.Baremetalsolution.V2.VolumeSnapshot.SnapshotType,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.GetVolumeSnapshotRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.ListVolumeSnapshotsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Baremetalsolution.V2.ListVolumeSnapshotsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :volume_snapshots, 1,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.VolumeSnapshot,
    json_name: "volumeSnapshots"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Baremetalsolution.V2.DeleteVolumeSnapshotRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.CreateVolumeSnapshotRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :volume_snapshot, 2,
    type: Google.Cloud.Baremetalsolution.V2.VolumeSnapshot,
    json_name: "volumeSnapshot",
    deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.RestoreVolumeSnapshotRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :volume_snapshot, 1, type: :string, json_name: "volumeSnapshot", deprecated: false
end
