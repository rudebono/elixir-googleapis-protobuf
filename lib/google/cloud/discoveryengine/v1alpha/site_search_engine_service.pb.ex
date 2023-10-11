defmodule Google.Cloud.Discoveryengine.V1alpha.RecrawlUrisResponse.FailureInfo.FailureReason.CorpusType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CORPUS_TYPE_UNSPECIFIED, 0
  field :DESKTOP, 1
  field :MOBILE, 2
end

defmodule Google.Cloud.Discoveryengine.V1alpha.RecrawlUrisRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :site_search_engine, 1, type: :string, json_name: "siteSearchEngine", deprecated: false
  field :uris, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.RecrawlUrisResponse.FailureInfo.FailureReason do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :corpus_type, 1,
    type:
      Google.Cloud.Discoveryengine.V1alpha.RecrawlUrisResponse.FailureInfo.FailureReason.CorpusType,
    json_name: "corpusType",
    enum: true

  field :error_message, 2, type: :string, json_name: "errorMessage"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.RecrawlUrisResponse.FailureInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, type: :string

  field :failure_reasons, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.RecrawlUrisResponse.FailureInfo.FailureReason,
    json_name: "failureReasons"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.RecrawlUrisResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :failure_samples, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.RecrawlUrisResponse.FailureInfo,
    json_name: "failureSamples"

  field :failed_uris, 2, repeated: true, type: :string, json_name: "failedUris"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.RecrawlUrisMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :invalid_uris, 3, repeated: true, type: :string, json_name: "invalidUris"
  field :valid_uris_count, 4, type: :int32, json_name: "validUrisCount"
  field :success_count, 5, type: :int32, json_name: "successCount"
  field :pending_count, 6, type: :int32, json_name: "pendingCount"
  field :quota_exceeded_count, 7, type: :int32, json_name: "quotaExceededCount"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SiteSearchEngineService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1alpha.SiteSearchEngineService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :RecrawlUris,
      Google.Cloud.Discoveryengine.V1alpha.RecrawlUrisRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SiteSearchEngineService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1alpha.SiteSearchEngineService.Service
end