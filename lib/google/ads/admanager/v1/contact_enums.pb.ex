defmodule Google.Ads.Admanager.V1.ContactStatusEnum.ContactStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONTACT_STATUS_UNSPECIFIED, 0
  field :INVITE_CANCELED, 1
  field :INVITE_EXPIRED, 2
  field :INVITE_PENDING, 3
  field :UNINVITED, 4
  field :USER_ACTIVE, 5
  field :USER_DISABLED, 6
end

defmodule Google.Ads.Admanager.V1.ContactStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
