defmodule Google.Cloud.Discoveryengine.V1.CheckGroundingSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :citation_threshold, 1,
    proto3_optional: true,
    type: :double,
    json_name: "citationThreshold"
end

defmodule Google.Cloud.Discoveryengine.V1.CheckGroundingRequest.UserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.CheckGroundingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :grounding_config, 1, type: :string, json_name: "groundingConfig", deprecated: false
  field :answer_candidate, 2, type: :string, json_name: "answerCandidate"
  field :facts, 3, repeated: true, type: Google.Cloud.Discoveryengine.V1.GroundingFact

  field :grounding_spec, 4,
    type: Google.Cloud.Discoveryengine.V1.CheckGroundingSpec,
    json_name: "groundingSpec"

  field :user_labels, 5,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.CheckGroundingRequest.UserLabelsEntry,
    json_name: "userLabels",
    map: true
end

defmodule Google.Cloud.Discoveryengine.V1.CheckGroundingResponse.Claim do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :start_pos, 1, proto3_optional: true, type: :int32, json_name: "startPos"
  field :end_pos, 2, proto3_optional: true, type: :int32, json_name: "endPos"
  field :claim_text, 3, type: :string, json_name: "claimText"
  field :citation_indices, 4, repeated: true, type: :int32, json_name: "citationIndices"

  field :grounding_check_required, 6,
    proto3_optional: true,
    type: :bool,
    json_name: "groundingCheckRequired"
end

defmodule Google.Cloud.Discoveryengine.V1.CheckGroundingResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :support_score, 1, proto3_optional: true, type: :float, json_name: "supportScore"

  field :cited_chunks, 3,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.FactChunk,
    json_name: "citedChunks"

  field :claims, 4,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.CheckGroundingResponse.Claim
end

defmodule Google.Cloud.Discoveryengine.V1.GroundedGenerationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.GroundedGenerationService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CheckGrounding,
      Google.Cloud.Discoveryengine.V1.CheckGroundingRequest,
      Google.Cloud.Discoveryengine.V1.CheckGroundingResponse
end

defmodule Google.Cloud.Discoveryengine.V1.GroundedGenerationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.GroundedGenerationService.Service
end