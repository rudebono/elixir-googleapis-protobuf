defmodule Google.Cloud.Datacatalog.V1beta1.SearchResultType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SEARCH_RESULT_TYPE_UNSPECIFIED, 0
  field :ENTRY, 1
  field :TAG_TEMPLATE, 2
  field :ENTRY_GROUP, 3
end

defmodule Google.Cloud.Datacatalog.V1beta1.SearchCatalogResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :search_result_type, 1,
    type: Google.Cloud.Datacatalog.V1beta1.SearchResultType,
    json_name: "searchResultType",
    enum: true

  field :search_result_subtype, 2, type: :string, json_name: "searchResultSubtype"
  field :relative_resource_name, 3, type: :string, json_name: "relativeResourceName"
  field :linked_resource, 4, type: :string, json_name: "linkedResource"
  field :modify_time, 7, type: Google.Protobuf.Timestamp, json_name: "modifyTime"
end
