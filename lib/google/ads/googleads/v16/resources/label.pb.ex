defmodule Google.Ads.Googleads.V16.Resources.Label do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 6, proto3_optional: true, type: :int64, deprecated: false
  field :name, 7, proto3_optional: true, type: :string

  field :status, 4,
    type: Google.Ads.Googleads.V16.Enums.LabelStatusEnum.LabelStatus,
    enum: true,
    deprecated: false

  field :text_label, 5, type: Google.Ads.Googleads.V16.Common.TextLabel, json_name: "textLabel"
end