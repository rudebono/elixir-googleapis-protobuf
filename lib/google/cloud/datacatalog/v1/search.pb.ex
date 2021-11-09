defmodule Google.Cloud.Datacatalog.V1.SearchResultType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SEARCH_RESULT_TYPE_UNSPECIFIED | :ENTRY | :TAG_TEMPLATE | :ENTRY_GROUP

  field :SEARCH_RESULT_TYPE_UNSPECIFIED, 0
  field :ENTRY, 1
  field :TAG_TEMPLATE, 2
  field :ENTRY_GROUP, 3
end

defmodule Google.Cloud.Datacatalog.V1.SearchCatalogResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          system:
            {:integrated_system, Google.Cloud.Datacatalog.V1.IntegratedSystem.t()}
            | {:user_specified_system, String.t()},
          search_result_type: Google.Cloud.Datacatalog.V1.SearchResultType.t(),
          search_result_subtype: String.t(),
          relative_resource_name: String.t(),
          linked_resource: String.t(),
          modify_time: Google.Protobuf.Timestamp.t() | nil,
          fully_qualified_name: String.t(),
          display_name: String.t(),
          description: String.t()
        }

  defstruct [
    :system,
    :search_result_type,
    :search_result_subtype,
    :relative_resource_name,
    :linked_resource,
    :modify_time,
    :fully_qualified_name,
    :display_name,
    :description
  ]

  oneof :system, 0

  field :search_result_type, 1,
    type: Google.Cloud.Datacatalog.V1.SearchResultType,
    enum: true,
    json_name: "searchResultType"

  field :search_result_subtype, 2, type: :string, json_name: "searchResultSubtype"
  field :relative_resource_name, 3, type: :string, json_name: "relativeResourceName"
  field :linked_resource, 4, type: :string, json_name: "linkedResource"
  field :modify_time, 7, type: Google.Protobuf.Timestamp, json_name: "modifyTime"

  field :integrated_system, 8,
    type: Google.Cloud.Datacatalog.V1.IntegratedSystem,
    enum: true,
    json_name: "integratedSystem",
    oneof: 0

  field :user_specified_system, 9, type: :string, json_name: "userSpecifiedSystem", oneof: 0
  field :fully_qualified_name, 10, type: :string, json_name: "fullyQualifiedName"
  field :display_name, 12, type: :string, json_name: "displayName"
  field :description, 13, type: :string

  def transform_module(), do: nil
end
