defmodule Google.Cloud.Datacatalog.V1beta1.SearchResultType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SEARCH_RESULT_TYPE_UNSPECIFIED | :ENTRY | :TAG_TEMPLATE | :ENTRY_GROUP

  field :SEARCH_RESULT_TYPE_UNSPECIFIED, 0

  field :ENTRY, 1

  field :TAG_TEMPLATE, 2

  field :ENTRY_GROUP, 3
end

defmodule Google.Cloud.Datacatalog.V1beta1.SearchCatalogResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          search_result_type: Google.Cloud.Datacatalog.V1beta1.SearchResultType.t(),
          search_result_subtype: String.t(),
          relative_resource_name: String.t(),
          linked_resource: String.t()
        }

  defstruct [
    :search_result_type,
    :search_result_subtype,
    :relative_resource_name,
    :linked_resource
  ]

  field :search_result_type, 1,
    type: Google.Cloud.Datacatalog.V1beta1.SearchResultType,
    enum: true

  field :search_result_subtype, 2, type: :string
  field :relative_resource_name, 3, type: :string
  field :linked_resource, 4, type: :string
end
