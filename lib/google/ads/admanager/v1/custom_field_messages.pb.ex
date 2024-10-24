defmodule Google.Ads.Admanager.V1.CustomField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :custom_field_id, 2, type: :int64, json_name: "customFieldId", deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :description, 4, type: :string, deprecated: false

  field :status, 5,
    type: Google.Ads.Admanager.V1.CustomFieldStatusEnum.CustomFieldStatus,
    enum: true,
    deprecated: false

  field :entity_type, 7,
    type: Google.Ads.Admanager.V1.CustomFieldEntityTypeEnum.CustomFieldEntityType,
    json_name: "entityType",
    enum: true,
    deprecated: false

  field :data_type, 8,
    type: Google.Ads.Admanager.V1.CustomFieldDataTypeEnum.CustomFieldDataType,
    json_name: "dataType",
    enum: true,
    deprecated: false

  field :visibility, 9,
    type: Google.Ads.Admanager.V1.CustomFieldVisibilityEnum.CustomFieldVisibility,
    enum: true,
    deprecated: false

  field :options, 10,
    repeated: true,
    type: Google.Ads.Admanager.V1.CustomFieldOption,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.CustomFieldOption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :custom_field_option_id, 1,
    type: :int64,
    json_name: "customFieldOptionId",
    deprecated: false

  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
end