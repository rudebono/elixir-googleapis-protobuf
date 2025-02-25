defmodule Google.Cloud.Baremetalsolution.V2.NfsShare.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONED, 1
  field :CREATING, 2
  field :UPDATING, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Baremetalsolution.V2.NfsShare.MountPermissions do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MOUNT_PERMISSIONS_UNSPECIFIED, 0
  field :READ, 1
  field :READ_WRITE, 2
end

defmodule Google.Cloud.Baremetalsolution.V2.NfsShare.StorageType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STORAGE_TYPE_UNSPECIFIED, 0
  field :SSD, 1
  field :HDD, 2
end

defmodule Google.Cloud.Baremetalsolution.V2.NfsShare.AllowedClient do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :network, 1, type: :string, deprecated: false
  field :share_ip, 2, type: :string, json_name: "shareIp", deprecated: false
  field :allowed_clients_cidr, 3, type: :string, json_name: "allowedClientsCidr"

  field :mount_permissions, 4,
    type: Google.Cloud.Baremetalsolution.V2.NfsShare.MountPermissions,
    json_name: "mountPermissions",
    enum: true

  field :allow_dev, 5, type: :bool, json_name: "allowDev"
  field :allow_suid, 6, type: :bool, json_name: "allowSuid"
  field :no_root_squash, 7, type: :bool, json_name: "noRootSquash"
  field :nfs_path, 8, type: :string, json_name: "nfsPath", deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.NfsShare.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Baremetalsolution.V2.NfsShare do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :nfs_share_id, 2, type: :string, json_name: "nfsShareId", deprecated: false
  field :id, 8, type: :string, deprecated: false

  field :state, 3,
    type: Google.Cloud.Baremetalsolution.V2.NfsShare.State,
    enum: true,
    deprecated: false

  field :volume, 4, type: :string, deprecated: false

  field :allowed_clients, 5,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.NfsShare.AllowedClient,
    json_name: "allowedClients"

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.NfsShare.LabelsEntry,
    map: true

  field :requested_size_gib, 7, type: :int64, json_name: "requestedSizeGib"

  field :storage_type, 9,
    type: Google.Cloud.Baremetalsolution.V2.NfsShare.StorageType,
    json_name: "storageType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.GetNfsShareRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.ListNfsSharesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Baremetalsolution.V2.ListNfsSharesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :nfs_shares, 1,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.NfsShare,
    json_name: "nfsShares"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Baremetalsolution.V2.UpdateNfsShareRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :nfs_share, 1,
    type: Google.Cloud.Baremetalsolution.V2.NfsShare,
    json_name: "nfsShare",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Baremetalsolution.V2.RenameNfsShareRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :new_nfsshare_id, 2, type: :string, json_name: "newNfsshareId", deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.CreateNfsShareRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :nfs_share, 2,
    type: Google.Cloud.Baremetalsolution.V2.NfsShare,
    json_name: "nfsShare",
    deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.DeleteNfsShareRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
