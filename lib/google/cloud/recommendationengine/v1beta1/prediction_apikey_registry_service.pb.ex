defmodule Google.Cloud.Recommendationengine.V1beta1.PredictionApiKeyRegistration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          api_key: String.t()
        }

  defstruct [:api_key]

  field :api_key, 1, type: :string, json_name: "apiKey"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Recommendationengine.V1beta1.CreatePredictionApiKeyRegistrationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          prediction_api_key_registration:
            Google.Cloud.Recommendationengine.V1beta1.PredictionApiKeyRegistration.t() | nil
        }

  defstruct [:parent, :prediction_api_key_registration]

  field :parent, 1, type: :string

  field :prediction_api_key_registration, 2,
    type: Google.Cloud.Recommendationengine.V1beta1.PredictionApiKeyRegistration,
    json_name: "predictionApiKeyRegistration"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Recommendationengine.V1beta1.ListPredictionApiKeyRegistrationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Recommendationengine.V1beta1.ListPredictionApiKeyRegistrationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          prediction_api_key_registrations: [
            Google.Cloud.Recommendationengine.V1beta1.PredictionApiKeyRegistration.t()
          ],
          next_page_token: String.t()
        }

  defstruct [:prediction_api_key_registrations, :next_page_token]

  field :prediction_api_key_registrations, 1,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.PredictionApiKeyRegistration,
    json_name: "predictionApiKeyRegistrations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Recommendationengine.V1beta1.DeletePredictionApiKeyRegistrationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Recommendationengine.V1beta1.PredictionApiKeyRegistry.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.recommendationengine.v1beta1.PredictionApiKeyRegistry"

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
