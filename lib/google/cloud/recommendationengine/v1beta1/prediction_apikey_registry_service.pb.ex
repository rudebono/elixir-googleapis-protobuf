defmodule Google.Cloud.Recommendationengine.V1beta1.PredictionApiKeyRegistration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          api_key: String.t()
        }

  defstruct [:api_key]

  field :api_key, 1, type: :string
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
    type: Google.Cloud.Recommendationengine.V1beta1.PredictionApiKeyRegistration
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
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
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
    type: Google.Cloud.Recommendationengine.V1beta1.PredictionApiKeyRegistration

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Recommendationengine.V1beta1.DeletePredictionApiKeyRegistrationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end
