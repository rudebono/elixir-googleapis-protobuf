defmodule Google.Marketingplatform.Admin.V1alpha.LinkVerificationState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :LINK_VERIFICATION_STATE_UNSPECIFIED, 0
  field :LINK_VERIFICATION_STATE_VERIFIED, 1
  field :LINK_VERIFICATION_STATE_NOT_VERIFIED, 2
end

defmodule Google.Marketingplatform.Admin.V1alpha.Organization do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
end

defmodule Google.Marketingplatform.Admin.V1alpha.AnalyticsAccountLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :analytics_account, 2, type: :string, json_name: "analyticsAccount", deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false

  field :link_verification_state, 4,
    type: Google.Marketingplatform.Admin.V1alpha.LinkVerificationState,
    json_name: "linkVerificationState",
    enum: true,
    deprecated: false
end