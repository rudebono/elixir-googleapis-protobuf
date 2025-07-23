defmodule Google.Cloud.Apphub.V1.Workload.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :DETACHED, 4
end

defmodule Google.Cloud.Apphub.V1.Workload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :workload_reference, 4,
    type: Google.Cloud.Apphub.V1.WorkloadReference,
    json_name: "workloadReference",
    deprecated: false

  field :workload_properties, 5,
    type: Google.Cloud.Apphub.V1.WorkloadProperties,
    json_name: "workloadProperties",
    deprecated: false

  field :discovered_workload, 6, type: :string, json_name: "discoveredWorkload", deprecated: false
  field :attributes, 7, type: Google.Cloud.Apphub.V1.Attributes, deprecated: false

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :uid, 10, type: :string, deprecated: false
  field :state, 11, type: Google.Cloud.Apphub.V1.Workload.State, enum: true, deprecated: false
end

defmodule Google.Cloud.Apphub.V1.WorkloadReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apphub.V1.WorkloadProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gcp_project, 1, type: :string, json_name: "gcpProject", deprecated: false
  field :location, 2, type: :string, deprecated: false
  field :zone, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Apphub.V1.DiscoveredWorkload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :workload_reference, 2,
    type: Google.Cloud.Apphub.V1.WorkloadReference,
    json_name: "workloadReference",
    deprecated: false

  field :workload_properties, 3,
    type: Google.Cloud.Apphub.V1.WorkloadProperties,
    json_name: "workloadProperties",
    deprecated: false
end
