defmodule Google.Cloud.Rapidmigrationassessment.V1.Collector.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STATE_INITIALIZING, 1
  field :STATE_READY_TO_USE, 2
  field :STATE_REGISTERED, 3
  field :STATE_ACTIVE, 4
  field :STATE_PAUSED, 5
  field :STATE_DELETING, 6
  field :STATE_DECOMMISSIONED, 7
  field :STATE_ERROR, 8
end

defmodule Google.Cloud.Rapidmigrationassessment.V1.Annotation.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :TYPE_LEGACY_EXPORT_CONSENT, 1
  field :TYPE_QWIKLAB, 2
end

defmodule Google.Cloud.Rapidmigrationassessment.V1.GuestOsScan do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :core_source, 1, type: :string, json_name: "coreSource"
end

defmodule Google.Cloud.Rapidmigrationassessment.V1.VSphereScan do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :core_source, 1, type: :string, json_name: "coreSource"
end

defmodule Google.Cloud.Rapidmigrationassessment.V1.Collector.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Rapidmigrationassessment.V1.Collector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Rapidmigrationassessment.V1.Collector.LabelsEntry,
    map: true

  field :display_name, 5, type: :string, json_name: "displayName"
  field :description, 6, type: :string
  field :service_account, 7, type: :string, json_name: "serviceAccount"
  field :bucket, 8, type: :string, deprecated: false
  field :expected_asset_count, 9, type: :int64, json_name: "expectedAssetCount"

  field :state, 10,
    type: Google.Cloud.Rapidmigrationassessment.V1.Collector.State,
    enum: true,
    deprecated: false

  field :client_version, 11, type: :string, json_name: "clientVersion", deprecated: false

  field :guest_os_scan, 12,
    type: Google.Cloud.Rapidmigrationassessment.V1.GuestOsScan,
    json_name: "guestOsScan",
    deprecated: false

  field :vsphere_scan, 13,
    type: Google.Cloud.Rapidmigrationassessment.V1.VSphereScan,
    json_name: "vsphereScan",
    deprecated: false

  field :collection_days, 14, type: :int32, json_name: "collectionDays"
  field :eula_uri, 15, type: :string, json_name: "eulaUri"
end

defmodule Google.Cloud.Rapidmigrationassessment.V1.Annotation.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Rapidmigrationassessment.V1.Annotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Rapidmigrationassessment.V1.Annotation.LabelsEntry,
    map: true

  field :type, 5, type: Google.Cloud.Rapidmigrationassessment.V1.Annotation.Type, enum: true
end
