defmodule Google.Cloud.Aiplatform.V1.MetadataStore.MetadataStoreState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :disk_utilization_bytes, 1, type: :int64, json_name: "diskUtilizationBytes"
end

defmodule Google.Cloud.Aiplatform.V1.MetadataStore.DataplexConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :enabled_pipelines_lineage, 1,
    type: :bool,
    json_name: "enabledPipelinesLineage",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.MetadataStore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :encryption_spec, 5,
    type: Google.Cloud.Aiplatform.V1.EncryptionSpec,
    json_name: "encryptionSpec"

  field :description, 6, type: :string

  field :state, 7,
    type: Google.Cloud.Aiplatform.V1.MetadataStore.MetadataStoreState,
    deprecated: false

  field :dataplex_config, 8,
    type: Google.Cloud.Aiplatform.V1.MetadataStore.DataplexConfig,
    json_name: "dataplexConfig",
    deprecated: false
end
