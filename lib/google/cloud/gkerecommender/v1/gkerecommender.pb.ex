defmodule Google.Cloud.Gkerecommender.V1.FetchModelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :page_size, 1,
    proto3_optional: true,
    type: :int32,
    json_name: "pageSize",
    deprecated: false

  field :page_token, 2,
    proto3_optional: true,
    type: :string,
    json_name: "pageToken",
    deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.FetchModelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :models, 1, repeated: true, type: :string, deprecated: false
  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.FetchModelServersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false

  field :page_size, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "pageSize",
    deprecated: false

  field :page_token, 3,
    proto3_optional: true,
    type: :string,
    json_name: "pageToken",
    deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.FetchModelServersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model_servers, 1,
    repeated: true,
    type: :string,
    json_name: "modelServers",
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.FetchModelServerVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :model_server, 2, type: :string, json_name: "modelServer", deprecated: false

  field :page_size, 3,
    proto3_optional: true,
    type: :int32,
    json_name: "pageSize",
    deprecated: false

  field :page_token, 4,
    proto3_optional: true,
    type: :string,
    json_name: "pageToken",
    deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.FetchModelServerVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model_server_versions, 1,
    repeated: true,
    type: :string,
    json_name: "modelServerVersions",
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.FetchBenchmarkingDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model_server_info, 1,
    type: Google.Cloud.Gkerecommender.V1.ModelServerInfo,
    json_name: "modelServerInfo",
    deprecated: false

  field :instance_type, 3, type: :string, json_name: "instanceType", deprecated: false
  field :pricing_model, 4, type: :string, json_name: "pricingModel", deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.FetchBenchmarkingDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :profile, 1,
    repeated: true,
    type: Google.Cloud.Gkerecommender.V1.Profile,
    deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.FetchProfilesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :model_server, 2, type: :string, json_name: "modelServer", deprecated: false

  field :model_server_version, 3,
    type: :string,
    json_name: "modelServerVersion",
    deprecated: false

  field :performance_requirements, 4,
    type: Google.Cloud.Gkerecommender.V1.PerformanceRequirements,
    json_name: "performanceRequirements",
    deprecated: false

  field :page_size, 5,
    proto3_optional: true,
    type: :int32,
    json_name: "pageSize",
    deprecated: false

  field :page_token, 6,
    proto3_optional: true,
    type: :string,
    json_name: "pageToken",
    deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.PerformanceRequirements do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target_ntpot_milliseconds, 1,
    proto3_optional: true,
    type: :int32,
    json_name: "targetNtpotMilliseconds",
    deprecated: false

  field :target_ttft_milliseconds, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "targetTtftMilliseconds",
    deprecated: false

  field :target_cost, 3,
    type: Google.Cloud.Gkerecommender.V1.Cost,
    json_name: "targetCost",
    deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.Amount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :units, 1, type: :int64, deprecated: false
  field :nanos, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.Cost do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cost_per_million_output_tokens, 1,
    type: Google.Cloud.Gkerecommender.V1.Amount,
    json_name: "costPerMillionOutputTokens",
    deprecated: false

  field :cost_per_million_input_tokens, 2,
    type: Google.Cloud.Gkerecommender.V1.Amount,
    json_name: "costPerMillionInputTokens",
    deprecated: false

  field :pricing_model, 3, type: :string, json_name: "pricingModel", deprecated: false

  field :output_input_cost_ratio, 4,
    proto3_optional: true,
    type: :float,
    json_name: "outputInputCostRatio",
    deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.TokensPerSecondRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :min, 1, type: :int32, deprecated: false
  field :max, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.MillisecondRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :min, 1, type: :int32, deprecated: false
  field :max, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.PerformanceRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :throughput_output_range, 1,
    type: Google.Cloud.Gkerecommender.V1.TokensPerSecondRange,
    json_name: "throughputOutputRange",
    deprecated: false

  field :ttft_range, 2,
    type: Google.Cloud.Gkerecommender.V1.MillisecondRange,
    json_name: "ttftRange",
    deprecated: false

  field :ntpot_range, 3,
    type: Google.Cloud.Gkerecommender.V1.MillisecondRange,
    json_name: "ntpotRange",
    deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.FetchProfilesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :profile, 1,
    repeated: true,
    type: Google.Cloud.Gkerecommender.V1.Profile,
    deprecated: false

  field :performance_range, 2,
    type: Google.Cloud.Gkerecommender.V1.PerformanceRange,
    json_name: "performanceRange",
    deprecated: false

  field :comments, 3, type: :string, deprecated: false
  field :next_page_token, 4, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.ModelServerInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :model_server, 2, type: :string, json_name: "modelServer", deprecated: false

  field :model_server_version, 3,
    type: :string,
    json_name: "modelServerVersion",
    deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.ResourcesUsed do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :accelerator_count, 1, type: :int32, json_name: "acceleratorCount", deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.PerformanceStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :queries_per_second, 1, type: :float, json_name: "queriesPerSecond", deprecated: false

  field :output_tokens_per_second, 2,
    type: :int32,
    json_name: "outputTokensPerSecond",
    deprecated: false

  field :ntpot_milliseconds, 3, type: :int32, json_name: "ntpotMilliseconds", deprecated: false
  field :ttft_milliseconds, 4, type: :int32, json_name: "ttftMilliseconds", deprecated: false
  field :cost, 5, repeated: true, type: Google.Cloud.Gkerecommender.V1.Cost, deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.Profile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model_server_info, 1,
    type: Google.Cloud.Gkerecommender.V1.ModelServerInfo,
    json_name: "modelServerInfo",
    deprecated: false

  field :accelerator_type, 2, type: :string, json_name: "acceleratorType", deprecated: false
  field :tpu_topology, 3, type: :string, json_name: "tpuTopology", deprecated: false
  field :instance_type, 4, type: :string, json_name: "instanceType", deprecated: false

  field :resources_used, 5,
    type: Google.Cloud.Gkerecommender.V1.ResourcesUsed,
    json_name: "resourcesUsed",
    deprecated: false

  field :performance_stats, 6,
    repeated: true,
    type: Google.Cloud.Gkerecommender.V1.PerformanceStats,
    json_name: "performanceStats",
    deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.GenerateOptimizedManifestRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model_server_info, 1,
    type: Google.Cloud.Gkerecommender.V1.ModelServerInfo,
    json_name: "modelServerInfo",
    deprecated: false

  field :accelerator_type, 2, type: :string, json_name: "acceleratorType", deprecated: false

  field :kubernetes_namespace, 3,
    type: :string,
    json_name: "kubernetesNamespace",
    deprecated: false

  field :performance_requirements, 4,
    type: Google.Cloud.Gkerecommender.V1.PerformanceRequirements,
    json_name: "performanceRequirements",
    deprecated: false

  field :storage_config, 5,
    type: Google.Cloud.Gkerecommender.V1.StorageConfig,
    json_name: "storageConfig",
    deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.KubernetesManifest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kind, 1, type: :string, deprecated: false
  field :api_version, 2, type: :string, json_name: "apiVersion", deprecated: false
  field :content, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.GenerateOptimizedManifestResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kubernetes_manifests, 1,
    repeated: true,
    type: Google.Cloud.Gkerecommender.V1.KubernetesManifest,
    json_name: "kubernetesManifests",
    deprecated: false

  field :comments, 2, repeated: true, type: :string, deprecated: false
  field :manifest_version, 3, type: :string, json_name: "manifestVersion", deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.StorageConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model_bucket_uri, 1, type: :string, json_name: "modelBucketUri", deprecated: false
  field :xla_cache_bucket_uri, 2, type: :string, json_name: "xlaCacheBucketUri", deprecated: false
end

defmodule Google.Cloud.Gkerecommender.V1.GkeInferenceQuickstart.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.gkerecommender.v1.GkeInferenceQuickstart",
    protoc_gen_elixir_version: "0.15.0"

  rpc :FetchModels,
      Google.Cloud.Gkerecommender.V1.FetchModelsRequest,
      Google.Cloud.Gkerecommender.V1.FetchModelsResponse

  rpc :FetchModelServers,
      Google.Cloud.Gkerecommender.V1.FetchModelServersRequest,
      Google.Cloud.Gkerecommender.V1.FetchModelServersResponse

  rpc :FetchModelServerVersions,
      Google.Cloud.Gkerecommender.V1.FetchModelServerVersionsRequest,
      Google.Cloud.Gkerecommender.V1.FetchModelServerVersionsResponse

  rpc :FetchProfiles,
      Google.Cloud.Gkerecommender.V1.FetchProfilesRequest,
      Google.Cloud.Gkerecommender.V1.FetchProfilesResponse

  rpc :GenerateOptimizedManifest,
      Google.Cloud.Gkerecommender.V1.GenerateOptimizedManifestRequest,
      Google.Cloud.Gkerecommender.V1.GenerateOptimizedManifestResponse

  rpc :FetchBenchmarkingData,
      Google.Cloud.Gkerecommender.V1.FetchBenchmarkingDataRequest,
      Google.Cloud.Gkerecommender.V1.FetchBenchmarkingDataResponse
end

defmodule Google.Cloud.Gkerecommender.V1.GkeInferenceQuickstart.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Gkerecommender.V1.GkeInferenceQuickstart.Service
end
