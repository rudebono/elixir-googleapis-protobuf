defmodule Google.Cloud.Ml.V1.PredictRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          http_body: Google.Api.HttpBody.t() | nil
        }

  defstruct [:name, :http_body]

  field :name, 1, type: :string
  field :http_body, 2, type: Google.Api.HttpBody
end
