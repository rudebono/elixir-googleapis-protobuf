defmodule Google.Cloud.Aiplatform.V1.FeatureOnlineStore.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STABLE, 1
  field :UPDATING, 2
end

defmodule Google.Cloud.Aiplatform.V1.FeatureOnlineStore.Bigtable.AutoScaling do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min_node_count, 1, type: :int32, json_name: "minNodeCount", deprecated: false
  field :max_node_count, 2, type: :int32, json_name: "maxNodeCount", deprecated: false

  field :cpu_utilization_target, 3,
    type: :int32,
    json_name: "cpuUtilizationTarget",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.FeatureOnlineStore.Bigtable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :auto_scaling, 1,
    type: Google.Cloud.Aiplatform.V1.FeatureOnlineStore.Bigtable.AutoScaling,
    json_name: "autoScaling",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.FeatureOnlineStore.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.FeatureOnlineStore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :storage_type, 0

  field :bigtable, 8, type: Google.Cloud.Aiplatform.V1.FeatureOnlineStore.Bigtable, oneof: 0
  field :name, 1, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 5, type: :string, deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.FeatureOnlineStore.LabelsEntry,
    map: true,
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Aiplatform.V1.FeatureOnlineStore.State,
    enum: true,
    deprecated: false
end