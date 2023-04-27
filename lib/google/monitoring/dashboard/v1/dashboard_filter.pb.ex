defmodule Google.Monitoring.Dashboard.V1.DashboardFilter.FilterType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FILTER_TYPE_UNSPECIFIED, 0
  field :RESOURCE_LABEL, 1
  field :METRIC_LABEL, 2
  field :USER_METADATA_LABEL, 3
  field :SYSTEM_METADATA_LABEL, 4
  field :GROUP, 5
end

defmodule Google.Monitoring.Dashboard.V1.DashboardFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :default_value, 0

  field :label_key, 1, type: :string, json_name: "labelKey", deprecated: false
  field :template_variable, 3, type: :string, json_name: "templateVariable"
  field :string_value, 4, type: :string, json_name: "stringValue", oneof: 0

  field :filter_type, 5,
    type: Google.Monitoring.Dashboard.V1.DashboardFilter.FilterType,
    json_name: "filterType",
    enum: true
end