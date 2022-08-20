defmodule Google.Cloud.Aiplatform.V1beta1.Featurestore.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STABLE, 1
  field :UPDATING, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.Featurestore.OnlineServingConfig.Scaling do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :min_node_count, 1, type: :int32, json_name: "minNodeCount", deprecated: false
  field :max_node_count, 2, type: :int32, json_name: "maxNodeCount"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Featurestore.OnlineServingConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fixed_node_count, 2, type: :int32, json_name: "fixedNodeCount"

  field :scaling, 4,
    type: Google.Cloud.Aiplatform.V1beta1.Featurestore.OnlineServingConfig.Scaling
end

defmodule Google.Cloud.Aiplatform.V1beta1.Featurestore.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Featurestore do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
    type: Google.Cloud.Aiplatform.V1beta1.Featurestore.LabelsEntry,
    map: true,
    deprecated: false

  field :online_serving_config, 7,
    type: Google.Cloud.Aiplatform.V1beta1.Featurestore.OnlineServingConfig,
    json_name: "onlineServingConfig",
    deprecated: false

  field :state, 8,
    type: Google.Cloud.Aiplatform.V1beta1.Featurestore.State,
    enum: true,
    deprecated: false

  field :encryption_spec, 10,
    type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec,
    json_name: "encryptionSpec",
    deprecated: false
end