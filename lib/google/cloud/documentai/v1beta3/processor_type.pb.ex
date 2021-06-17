defmodule Google.Cloud.Documentai.V1beta3.ProcessorType.LocationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location_id: String.t()
        }

  defstruct [:location_id]

  field :location_id, 1, type: :string
end

defmodule Google.Cloud.Documentai.V1beta3.ProcessorType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: String.t(),
          category: String.t(),
          available_locations: [Google.Cloud.Documentai.V1beta3.ProcessorType.LocationInfo.t()],
          allow_creation: boolean
        }

  defstruct [:name, :type, :category, :available_locations, :allow_creation]

  field :name, 1, type: :string
  field :type, 2, type: :string
  field :category, 3, type: :string

  field :available_locations, 4,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.ProcessorType.LocationInfo

  field :allow_creation, 6, type: :bool
end
