defmodule Google.Ads.Admanager.V1.CreativePlaceholder do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :size, 1, type: Google.Ads.Admanager.V1.Size, deprecated: false

  field :companion_sizes, 2,
    repeated: true,
    type: Google.Ads.Admanager.V1.Size,
    json_name: "companionSizes"

  field :expected_creative_count, 3, type: :int32, json_name: "expectedCreativeCount"

  field :applied_labels, 4,
    repeated: true,
    type: Google.Ads.Admanager.V1.AppliedLabel,
    json_name: "appliedLabels"

  field :amp_only, 5, type: :bool, json_name: "ampOnly"

  field :creative_targeting_display_name, 6,
    type: :string,
    json_name: "creativeTargetingDisplayName"
end