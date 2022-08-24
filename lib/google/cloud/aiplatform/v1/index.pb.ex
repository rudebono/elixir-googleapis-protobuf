defmodule Google.Cloud.Aiplatform.V1.Index.IndexUpdateMethod do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :INDEX_UPDATE_METHOD_UNSPECIFIED, 0
  field :BATCH_UPDATE, 1
  field :STREAM_UPDATE, 2
end

defmodule Google.Cloud.Aiplatform.V1.Index.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.Index do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string
  field :metadata_schema_uri, 4, type: :string, json_name: "metadataSchemaUri", deprecated: false
  field :metadata, 6, type: Google.Protobuf.Value

  field :deployed_indexes, 7,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.DeployedIndexRef,
    json_name: "deployedIndexes",
    deprecated: false

  field :etag, 8, type: :string
  field :labels, 9, repeated: true, type: Google.Cloud.Aiplatform.V1.Index.LabelsEntry, map: true

  field :create_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :index_stats, 14,
    type: Google.Cloud.Aiplatform.V1.IndexStats,
    json_name: "indexStats",
    deprecated: false

  field :index_update_method, 16,
    type: Google.Cloud.Aiplatform.V1.Index.IndexUpdateMethod,
    json_name: "indexUpdateMethod",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.IndexDatapoint.Restriction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :allow_list, 2, repeated: true, type: :string, json_name: "allowList"
  field :deny_list, 3, repeated: true, type: :string, json_name: "denyList"
end

defmodule Google.Cloud.Aiplatform.V1.IndexDatapoint.CrowdingTag do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :crowding_attribute, 1, type: :string, json_name: "crowdingAttribute"
end

defmodule Google.Cloud.Aiplatform.V1.IndexDatapoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :datapoint_id, 1, type: :string, json_name: "datapointId", deprecated: false

  field :feature_vector, 2,
    repeated: true,
    type: :float,
    json_name: "featureVector",
    deprecated: false

  field :restricts, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.IndexDatapoint.Restriction,
    deprecated: false

  field :crowding_tag, 5,
    type: Google.Cloud.Aiplatform.V1.IndexDatapoint.CrowdingTag,
    json_name: "crowdingTag",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.IndexStats do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :vectors_count, 1, type: :int64, json_name: "vectorsCount", deprecated: false
  field :shards_count, 2, type: :int32, json_name: "shardsCount", deprecated: false
end