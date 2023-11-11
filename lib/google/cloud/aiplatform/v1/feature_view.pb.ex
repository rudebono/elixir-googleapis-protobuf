defmodule Google.Cloud.Aiplatform.V1.FeatureView.BigQuerySource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false

  field :entity_id_columns, 2,
    repeated: true,
    type: :string,
    json_name: "entityIdColumns",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.FeatureView.SyncConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cron, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.FeatureView.FeatureRegistrySource.FeatureGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :feature_group_id, 1, type: :string, json_name: "featureGroupId", deprecated: false
  field :feature_ids, 2, repeated: true, type: :string, json_name: "featureIds", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.FeatureView.FeatureRegistrySource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :feature_groups, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.FeatureView.FeatureRegistrySource.FeatureGroup,
    json_name: "featureGroups",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.FeatureView.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.FeatureView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :big_query_source, 6,
    type: Google.Cloud.Aiplatform.V1.FeatureView.BigQuerySource,
    json_name: "bigQuerySource",
    oneof: 0,
    deprecated: false

  field :feature_registry_source, 9,
    type: Google.Cloud.Aiplatform.V1.FeatureView.FeatureRegistrySource,
    json_name: "featureRegistrySource",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 4, type: :string, deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.FeatureView.LabelsEntry,
    map: true,
    deprecated: false

  field :sync_config, 7,
    type: Google.Cloud.Aiplatform.V1.FeatureView.SyncConfig,
    json_name: "syncConfig"
end