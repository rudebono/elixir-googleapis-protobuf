defmodule Google.Cloud.Discoveryengine.V1alpha.RecommendRequest.ParamsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Discoveryengine.V1alpha.RecommendRequest.UserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1alpha.RecommendRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :serving_config, 1, type: :string, json_name: "servingConfig", deprecated: false

  field :user_event, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.UserEvent,
    json_name: "userEvent",
    deprecated: false

  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :filter, 4, type: :string
  field :validate_only, 5, type: :bool, json_name: "validateOnly"

  field :params, 6,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.RecommendRequest.ParamsEntry,
    map: true

  field :user_labels, 8,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.RecommendRequest.UserLabelsEntry,
    json_name: "userLabels",
    map: true
end

defmodule Google.Cloud.Discoveryengine.V1alpha.RecommendResponse.RecommendationResult.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Discoveryengine.V1alpha.RecommendResponse.RecommendationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
  field :document, 2, type: Google.Cloud.Discoveryengine.V1alpha.Document

  field :metadata, 3,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1alpha.RecommendResponse.RecommendationResult.MetadataEntry,
    map: true
end

defmodule Google.Cloud.Discoveryengine.V1alpha.RecommendResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.RecommendResponse.RecommendationResult

  field :attribution_token, 2, type: :string, json_name: "attributionToken"
  field :missing_ids, 3, repeated: true, type: :string, json_name: "missingIds"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.RecommendationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1alpha.RecommendationService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :Recommend,
      Google.Cloud.Discoveryengine.V1alpha.RecommendRequest,
      Google.Cloud.Discoveryengine.V1alpha.RecommendResponse
end

defmodule Google.Cloud.Discoveryengine.V1alpha.RecommendationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1alpha.RecommendationService.Service
end