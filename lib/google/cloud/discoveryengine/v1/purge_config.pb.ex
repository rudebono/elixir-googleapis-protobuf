defmodule Google.Cloud.Discoveryengine.V1.PurgeUserEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :force, 3, type: :bool
end

defmodule Google.Cloud.Discoveryengine.V1.PurgeUserEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :purge_count, 1, type: :int64, json_name: "purgeCount"
end

defmodule Google.Cloud.Discoveryengine.V1.PurgeUserEventsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :success_count, 3, type: :int64, json_name: "successCount"
  field :failure_count, 4, type: :int64, json_name: "failureCount"
end

defmodule Google.Cloud.Discoveryengine.V1.PurgeErrorConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :destination, 0

  field :gcs_prefix, 1, type: :string, json_name: "gcsPrefix", oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1.PurgeDocumentsRequest.InlineSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :documents, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.PurgeDocumentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 5,
    type: Google.Cloud.Discoveryengine.V1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :inline_source, 6,
    type: Google.Cloud.Discoveryengine.V1.PurgeDocumentsRequest.InlineSource,
    json_name: "inlineSource",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false

  field :error_config, 7,
    type: Google.Cloud.Discoveryengine.V1.PurgeErrorConfig,
    json_name: "errorConfig"

  field :force, 3, type: :bool
end

defmodule Google.Cloud.Discoveryengine.V1.PurgeDocumentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :purge_count, 1, type: :int64, json_name: "purgeCount"

  field :purge_sample, 2,
    repeated: true,
    type: :string,
    json_name: "purgeSample",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.PurgeDocumentsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :success_count, 3, type: :int64, json_name: "successCount"
  field :failure_count, 4, type: :int64, json_name: "failureCount"
  field :ignored_count, 5, type: :int64, json_name: "ignoredCount"
end

defmodule Google.Cloud.Discoveryengine.V1.PurgeSuggestionDenyListEntriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.PurgeSuggestionDenyListEntriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :purge_count, 1, type: :int64, json_name: "purgeCount"
  field :error_samples, 2, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"
end

defmodule Google.Cloud.Discoveryengine.V1.PurgeSuggestionDenyListEntriesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1.PurgeCompletionSuggestionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.PurgeCompletionSuggestionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :purge_succeeded, 1, type: :bool, json_name: "purgeSucceeded"
  field :error_samples, 2, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"
end

defmodule Google.Cloud.Discoveryengine.V1.PurgeCompletionSuggestionsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end
