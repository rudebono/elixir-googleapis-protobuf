defmodule Google.Cloud.Websecurityscanner.V1.CrawledUrl do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          http_method: String.t(),
          url: String.t(),
          body: String.t()
        }

  defstruct [:http_method, :url, :body]

  field :http_method, 1, type: :string
  field :url, 2, type: :string
  field :body, 3, type: :string
end
