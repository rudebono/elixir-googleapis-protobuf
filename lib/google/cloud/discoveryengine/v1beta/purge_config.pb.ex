defmodule Google.Cloud.Discoveryengine.V1beta.PurgeUserEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :force, 3, type: :bool
end

defmodule Google.Cloud.Discoveryengine.V1beta.PurgeUserEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :purge_count, 1, type: :int64, json_name: "purgeCount"
end

defmodule Google.Cloud.Discoveryengine.V1beta.PurgeUserEventsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :success_count, 3, type: :int64, json_name: "successCount"
  field :failure_count, 4, type: :int64, json_name: "failureCount"
end

defmodule Google.Cloud.Discoveryengine.V1beta.PurgeDocumentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :force, 3, type: :bool
end

defmodule Google.Cloud.Discoveryengine.V1beta.PurgeDocumentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :purge_count, 1, type: :int64, json_name: "purgeCount"

  field :purge_sample, 2,
    repeated: true,
    type: :string,
    json_name: "purgeSample",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.PurgeDocumentsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :success_count, 3, type: :int64, json_name: "successCount"
  field :failure_count, 4, type: :int64, json_name: "failureCount"
  field :ignored_count, 5, type: :int64, json_name: "ignoredCount"
end

defmodule Google.Cloud.Discoveryengine.V1beta.PurgeSuggestionDenyListEntriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.PurgeSuggestionDenyListEntriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :purge_count, 1, type: :int64, json_name: "purgeCount"
  field :error_samples, 2, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"
end

defmodule Google.Cloud.Discoveryengine.V1beta.PurgeSuggestionDenyListEntriesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1beta.PurgeCompletionSuggestionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.PurgeCompletionSuggestionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :purge_succeeded, 1, type: :bool, json_name: "purgeSucceeded"
  field :error_samples, 2, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"
end

defmodule Google.Cloud.Discoveryengine.V1beta.PurgeCompletionSuggestionsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end