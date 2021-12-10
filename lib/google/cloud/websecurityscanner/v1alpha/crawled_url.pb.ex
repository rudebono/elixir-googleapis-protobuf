defmodule Google.Cloud.Websecurityscanner.V1alpha.CrawledUrl do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          http_method: String.t(),
          url: String.t(),
          body: String.t()
        }

  defstruct http_method: "",
            url: "",
            body: ""

  field :http_method, 1, type: :string, json_name: "httpMethod"
  field :url, 2, type: :string
  field :body, 3, type: :string
end
