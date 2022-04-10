defmodule Google.Monitoring.Dashboard.V1.DashboardFilter.FilterType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FILTER_TYPE_UNSPECIFIED
          | :RESOURCE_LABEL
          | :METRIC_LABEL
          | :USER_METADATA_LABEL
          | :SYSTEM_METADATA_LABEL
          | :GROUP

  field :FILTER_TYPE_UNSPECIFIED, 0
  field :RESOURCE_LABEL, 1
  field :METRIC_LABEL, 2
  field :USER_METADATA_LABEL, 3
  field :SYSTEM_METADATA_LABEL, 4
  field :GROUP, 5
end
defmodule Google.Monitoring.Dashboard.V1.DashboardFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          default_value: {:string_value, String.t()},
          label_key: String.t(),
          template_variable: String.t(),
          filter_type: Google.Monitoring.Dashboard.V1.DashboardFilter.FilterType.t()
        }

  defstruct default_value: nil,
            label_key: "",
            template_variable: "",
            filter_type: :FILTER_TYPE_UNSPECIFIED

  oneof :default_value, 0

  field :label_key, 1, type: :string, json_name: "labelKey", deprecated: false
  field :template_variable, 3, type: :string, json_name: "templateVariable"
  field :string_value, 4, type: :string, json_name: "stringValue", oneof: 0

  field :filter_type, 5,
    type: Google.Monitoring.Dashboard.V1.DashboardFilter.FilterType,
    json_name: "filterType",
    enum: true
end
