defmodule Google.Cloud.Discoveryengine.V1.RankingRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string
  field :title, 2, type: :string
  field :content, 3, type: :string
  field :score, 4, type: :float
end

defmodule Google.Cloud.Discoveryengine.V1.RankRequest.UserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.RankRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ranking_config, 1, type: :string, json_name: "rankingConfig", deprecated: false
  field :model, 2, type: :string
  field :top_n, 3, type: :int32, json_name: "topN"
  field :query, 4, type: :string

  field :records, 5,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.RankingRecord,
    deprecated: false

  field :ignore_record_details_in_response, 6,
    type: :bool,
    json_name: "ignoreRecordDetailsInResponse"

  field :user_labels, 7,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.RankRequest.UserLabelsEntry,
    json_name: "userLabels",
    map: true
end

defmodule Google.Cloud.Discoveryengine.V1.RankResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :records, 5, repeated: true, type: Google.Cloud.Discoveryengine.V1.RankingRecord
end

defmodule Google.Cloud.Discoveryengine.V1.RankService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.RankService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :Rank,
      Google.Cloud.Discoveryengine.V1.RankRequest,
      Google.Cloud.Discoveryengine.V1.RankResponse
end

defmodule Google.Cloud.Discoveryengine.V1.RankService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.RankService.Service
end
