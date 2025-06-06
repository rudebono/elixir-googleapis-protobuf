defmodule Google.Ads.Googleads.V20.Common.AdditionalApplicationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :application_id, 1, type: :string, json_name: "applicationId"

  field :application_instance, 2,
    type: Google.Ads.Googleads.V20.Enums.ApplicationInstanceEnum.ApplicationInstance,
    json_name: "applicationInstance",
    enum: true
end
