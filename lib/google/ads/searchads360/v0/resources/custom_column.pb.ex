defmodule Google.Ads.Searchads360.V0.Resources.CustomColumn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false
  field :name, 3, type: :string, deprecated: false
  field :description, 4, type: :string, deprecated: false

  field :value_type, 5,
    type: Google.Ads.Searchads360.V0.Enums.CustomColumnValueTypeEnum.CustomColumnValueType,
    json_name: "valueType",
    enum: true,
    deprecated: false

  field :references_attributes, 6,
    type: :bool,
    json_name: "referencesAttributes",
    deprecated: false

  field :references_metrics, 7, type: :bool, json_name: "referencesMetrics", deprecated: false
  field :queryable, 8, type: :bool, deprecated: false

  field :referenced_system_columns, 9,
    repeated: true,
    type: :string,
    json_name: "referencedSystemColumns",
    deprecated: false

  field :render_type, 10,
    type: Google.Ads.Searchads360.V0.Enums.CustomColumnRenderTypeEnum.CustomColumnRenderType,
    json_name: "renderType",
    enum: true,
    deprecated: false
end
