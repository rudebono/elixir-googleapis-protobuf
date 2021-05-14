defmodule Google.Cloud.Phishingprotection.V1beta1.ReportPhishingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          uri: String.t()
        }

  defstruct [:parent, :uri]

  field :parent, 1, type: :string
  field :uri, 2, type: :string
end

defmodule Google.Cloud.Phishingprotection.V1beta1.ReportPhishingResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
