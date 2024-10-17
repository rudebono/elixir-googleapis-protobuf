defmodule Google.Ads.Googleads.V18.Common.LocalServicesDocumentReadOnly do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :document_url, 1, proto3_optional: true, type: :string, json_name: "documentUrl"
end