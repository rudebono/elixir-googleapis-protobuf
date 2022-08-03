defmodule Google.Cloud.Retail.V2.PredictRequest.ParamsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end
defmodule Google.Cloud.Retail.V2.PredictRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Retail.V2.PredictRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :placement, 1, type: :string, deprecated: false

  field :user_event, 2,
    type: Google.Cloud.Retail.V2.UserEvent,
    json_name: "userEvent",
    deprecated: false

  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: true
  field :filter, 5, type: :string
  field :validate_only, 6, type: :bool, json_name: "validateOnly"

  field :params, 7,
    repeated: true,
    type: Google.Cloud.Retail.V2.PredictRequest.ParamsEntry,
    map: true

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Retail.V2.PredictRequest.LabelsEntry,
    map: true
end
defmodule Google.Cloud.Retail.V2.PredictResponse.PredictionResult.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end
defmodule Google.Cloud.Retail.V2.PredictResponse.PredictionResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :id, 1, type: :string

  field :metadata, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2.PredictResponse.PredictionResult.MetadataEntry,
    map: true
end
defmodule Google.Cloud.Retail.V2.PredictResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Cloud.Retail.V2.PredictResponse.PredictionResult
  field :attribution_token, 2, type: :string, json_name: "attributionToken"
  field :missing_ids, 3, repeated: true, type: :string, json_name: "missingIds"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Cloud.Retail.V2.PredictionService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.retail.v2.PredictionService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :Predict, Google.Cloud.Retail.V2.PredictRequest, Google.Cloud.Retail.V2.PredictResponse
end

defmodule Google.Cloud.Retail.V2.PredictionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Retail.V2.PredictionService.Service
end
