defmodule Google.Cloud.Discoveryengine.V1.PurgeDocumentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :force, 3, type: :bool
end

defmodule Google.Cloud.Discoveryengine.V1.PurgeDocumentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :purge_count, 1, type: :int64, json_name: "purgeCount"

  field :purge_sample, 2,
    repeated: true,
    type: :string,
    json_name: "purgeSample",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.PurgeDocumentsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :success_count, 3, type: :int64, json_name: "successCount"
  field :failure_count, 4, type: :int64, json_name: "failureCount"
  field :ignored_count, 5, type: :int64, json_name: "ignoredCount"
end

defmodule Google.Cloud.Discoveryengine.V1.PurgeSuggestionDenyListEntriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.PurgeSuggestionDenyListEntriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :purge_count, 1, type: :int64, json_name: "purgeCount"
  field :error_samples, 2, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"
end

defmodule Google.Cloud.Discoveryengine.V1.PurgeSuggestionDenyListEntriesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end