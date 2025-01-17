defmodule Google.Ads.Admanager.V1.GetCustomFieldRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListCustomFieldsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListCustomFieldsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :custom_fields, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.CustomField,
    json_name: "customFields"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.CustomFieldService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.CustomFieldService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :GetCustomField,
      Google.Ads.Admanager.V1.GetCustomFieldRequest,
      Google.Ads.Admanager.V1.CustomField

  rpc :ListCustomFields,
      Google.Ads.Admanager.V1.ListCustomFieldsRequest,
      Google.Ads.Admanager.V1.ListCustomFieldsResponse
end

defmodule Google.Ads.Admanager.V1.CustomFieldService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.CustomFieldService.Service
end
