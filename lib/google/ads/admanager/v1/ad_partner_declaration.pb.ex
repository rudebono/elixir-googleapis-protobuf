defmodule Google.Ads.Admanager.V1.DeclarationTypeEnum.DeclarationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DECLARATION_TYPE_UNSPECIFIED, 0
  field :NONE, 1
  field :DECLARED, 2
end

defmodule Google.Ads.Admanager.V1.AdPartnerDeclaration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: Google.Ads.Admanager.V1.DeclarationTypeEnum.DeclarationType, enum: true
  field :ad_partners, 2, repeated: true, type: :string, json_name: "adPartners", deprecated: false
end

defmodule Google.Ads.Admanager.V1.DeclarationTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end