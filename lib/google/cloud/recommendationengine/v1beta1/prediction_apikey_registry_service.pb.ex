defmodule Google.Cloud.Recommendationengine.V1beta1.PredictionApiKeyRegistration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :api_key, 1, type: :string, json_name: "apiKey"
end

defmodule Google.Cloud.Recommendationengine.V1beta1.CreatePredictionApiKeyRegistrationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :prediction_api_key_registration, 2,
    type: Google.Cloud.Recommendationengine.V1beta1.PredictionApiKeyRegistration,
    json_name: "predictionApiKeyRegistration",
    deprecated: false
end

defmodule Google.Cloud.Recommendationengine.V1beta1.ListPredictionApiKeyRegistrationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Recommendationengine.V1beta1.ListPredictionApiKeyRegistrationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction_api_key_registrations, 1,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.PredictionApiKeyRegistration,
    json_name: "predictionApiKeyRegistrations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Recommendationengine.V1beta1.DeletePredictionApiKeyRegistrationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Recommendationengine.V1beta1.PredictionApiKeyRegistry.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.recommendationengine.v1beta1.PredictionApiKeyRegistry",
    protoc_gen_elixir_version: "0.14.0"

  rpc :CreatePredictionApiKeyRegistration,
      Google.Cloud.Recommendationengine.V1beta1.CreatePredictionApiKeyRegistrationRequest,
      Google.Cloud.Recommendationengine.V1beta1.PredictionApiKeyRegistration

  rpc :ListPredictionApiKeyRegistrations,
      Google.Cloud.Recommendationengine.V1beta1.ListPredictionApiKeyRegistrationsRequest,
      Google.Cloud.Recommendationengine.V1beta1.ListPredictionApiKeyRegistrationsResponse

  rpc :DeletePredictionApiKeyRegistration,
      Google.Cloud.Recommendationengine.V1beta1.DeletePredictionApiKeyRegistrationRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Recommendationengine.V1beta1.PredictionApiKeyRegistry.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Recommendationengine.V1beta1.PredictionApiKeyRegistry.Service
end
