defmodule Google.Ads.Googleads.V9.Errors.LabelErrorEnum.LabelError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CANNOT_APPLY_INACTIVE_LABEL, 2
  field :CANNOT_APPLY_LABEL_TO_DISABLED_AD_GROUP_CRITERION, 3
  field :CANNOT_APPLY_LABEL_TO_NEGATIVE_AD_GROUP_CRITERION, 4
  field :EXCEEDED_LABEL_LIMIT_PER_TYPE, 5
  field :INVALID_RESOURCE_FOR_MANAGER_LABEL, 6
  field :DUPLICATE_NAME, 7
  field :INVALID_LABEL_NAME, 8
  field :CANNOT_ATTACH_LABEL_TO_DRAFT, 9
  field :CANNOT_ATTACH_NON_MANAGER_LABEL_TO_CUSTOMER, 10
end

defmodule Google.Ads.Googleads.V9.Errors.LabelErrorEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end