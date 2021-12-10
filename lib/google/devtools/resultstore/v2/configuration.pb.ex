defmodule Google.Devtools.Resultstore.V2.Configuration.Id do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          invocation_id: String.t(),
          configuration_id: String.t()
        }

  defstruct invocation_id: "",
            configuration_id: ""

  field :invocation_id, 1, type: :string, json_name: "invocationId"
  field :configuration_id, 2, type: :string, json_name: "configurationId"
end
defmodule Google.Devtools.Resultstore.V2.Configuration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          id: Google.Devtools.Resultstore.V2.Configuration.Id.t() | nil,
          status_attributes: Google.Devtools.Resultstore.V2.StatusAttributes.t() | nil,
          configuration_attributes:
            Google.Devtools.Resultstore.V2.ConfigurationAttributes.t() | nil,
          properties: [Google.Devtools.Resultstore.V2.Property.t()],
          display_name: String.t()
        }

  defstruct name: "",
            id: nil,
            status_attributes: nil,
            configuration_attributes: nil,
            properties: [],
            display_name: ""

  field :name, 1, type: :string
  field :id, 2, type: Google.Devtools.Resultstore.V2.Configuration.Id

  field :status_attributes, 3,
    type: Google.Devtools.Resultstore.V2.StatusAttributes,
    json_name: "statusAttributes"

  field :configuration_attributes, 5,
    type: Google.Devtools.Resultstore.V2.ConfigurationAttributes,
    json_name: "configurationAttributes"

  field :properties, 6, repeated: true, type: Google.Devtools.Resultstore.V2.Property
  field :display_name, 8, type: :string, json_name: "displayName"
end
defmodule Google.Devtools.Resultstore.V2.ConfigurationAttributes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpu: String.t()
        }

  defstruct cpu: ""

  field :cpu, 1, type: :string
end
