defmodule Google.Ads.Admanager.V1.CompanyCreditStatusEnum.CompanyCreditStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :COMPANY_CREDIT_STATUS_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :INACTIVE, 2
  field :ON_HOLD, 3
  field :STOP, 4
  field :BLOCKED, 5
end

defmodule Google.Ads.Admanager.V1.CompanyCreditStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end