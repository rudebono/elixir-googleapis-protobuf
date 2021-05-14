defmodule Google.Cloud.Dialogflow.V2beta1.Fulfillment.Feature.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :SMALLTALK

  field :TYPE_UNSPECIFIED, 0

  field :SMALLTALK, 1
end

defmodule Google.Cloud.Dialogflow.V2beta1.Fulfillment.GenericWebService.RequestHeadersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.Fulfillment.GenericWebService do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t(),
          username: String.t(),
          password: String.t(),
          request_headers: %{String.t() => String.t()},
          is_cloud_function: boolean
        }

  defstruct [:uri, :username, :password, :request_headers, :is_cloud_function]

  field :uri, 1, type: :string
  field :username, 2, type: :string
  field :password, 3, type: :string

  field :request_headers, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Fulfillment.GenericWebService.RequestHeadersEntry,
    map: true

  field :is_cloud_function, 5, type: :bool, deprecated: true
end

defmodule Google.Cloud.Dialogflow.V2beta1.Fulfillment.Feature do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Dialogflow.V2beta1.Fulfillment.Feature.Type.t()
        }

  defstruct [:type]

  field :type, 1, type: Google.Cloud.Dialogflow.V2beta1.Fulfillment.Feature.Type, enum: true
end

defmodule Google.Cloud.Dialogflow.V2beta1.Fulfillment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fulfillment: {atom, any},
          name: String.t(),
          display_name: String.t(),
          enabled: boolean,
          features: [Google.Cloud.Dialogflow.V2beta1.Fulfillment.Feature.t()]
        }

  defstruct [:fulfillment, :name, :display_name, :enabled, :features]

  oneof :fulfillment, 0
  field :name, 1, type: :string
  field :display_name, 2, type: :string

  field :generic_web_service, 3,
    type: Google.Cloud.Dialogflow.V2beta1.Fulfillment.GenericWebService,
    oneof: 0

  field :enabled, 4, type: :bool
  field :features, 5, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Fulfillment.Feature
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetFulfillmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.UpdateFulfillmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fulfillment: Google.Cloud.Dialogflow.V2beta1.Fulfillment.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:fulfillment, :update_mask]

  field :fulfillment, 1, type: Google.Cloud.Dialogflow.V2beta1.Fulfillment
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dialogflow.V2beta1.Fulfillments.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.v2beta1.Fulfillments"

  rpc :GetFulfillment,
      Google.Cloud.Dialogflow.V2beta1.GetFulfillmentRequest,
      Google.Cloud.Dialogflow.V2beta1.Fulfillment

  rpc :UpdateFulfillment,
      Google.Cloud.Dialogflow.V2beta1.UpdateFulfillmentRequest,
      Google.Cloud.Dialogflow.V2beta1.Fulfillment
end

defmodule Google.Cloud.Dialogflow.V2beta1.Fulfillments.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.Fulfillments.Service
end
