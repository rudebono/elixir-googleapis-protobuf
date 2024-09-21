defmodule Google.Ads.Admanager.V1.CustomFieldDataTypeEnum.CustomFieldDataType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CUSTOM_FIELD_DATA_TYPE_UNSPECIFIED, 0
  field :STRING, 1
  field :NUMBER, 2
  field :TOGGLE, 3
  field :DROP_DOWN, 4
end

defmodule Google.Ads.Admanager.V1.CustomFieldEntityTypeEnum.CustomFieldEntityType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CUSTOM_FIELD_ENTITY_TYPE_UNSPECIFIED, 0
  field :LINE_ITEM, 1
  field :ORDER, 2
  field :CREATIVE, 3
  field :PROPOSAL, 4
  field :PROPOSAL_LINE_ITEM, 5
end

defmodule Google.Ads.Admanager.V1.CustomFieldStatusEnum.CustomFieldStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CUSTOM_FIELD_STATUS_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :INACTIVE, 2
end

defmodule Google.Ads.Admanager.V1.CustomFieldVisibilityEnum.CustomFieldVisibility do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CUSTOM_FIELD_VISIBILITY_UNSPECIFIED, 0
  field :HIDDEN, 1
  field :READ_ONLY, 2
  field :EDITABLE, 3
end

defmodule Google.Ads.Admanager.V1.CustomFieldDataTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.CustomFieldEntityTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.CustomFieldStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.CustomFieldVisibilityEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end