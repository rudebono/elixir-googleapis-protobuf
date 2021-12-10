defmodule Google.Cloud.Asset.V1p1beta1.SearchAllResourcesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: String.t(),
          query: String.t(),
          asset_types: [String.t()],
          page_size: integer,
          page_token: String.t(),
          order_by: String.t()
        }

  defstruct scope: "",
            query: "",
            asset_types: [],
            page_size: 0,
            page_token: "",
            order_by: ""

  field :scope, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :asset_types, 3, repeated: true, type: :string, json_name: "assetTypes", deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 10, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Asset.V1p1beta1.SearchAllResourcesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Cloud.Asset.V1p1beta1.StandardResourceMetadata.t()],
          next_page_token: String.t()
        }

  defstruct results: [],
            next_page_token: ""

  field :results, 1, repeated: true, type: Google.Cloud.Asset.V1p1beta1.StandardResourceMetadata
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Asset.V1p1beta1.SearchAllIamPoliciesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope: String.t(),
          query: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct scope: "",
            query: "",
            page_size: 0,
            page_token: ""

  field :scope, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Asset.V1p1beta1.SearchAllIamPoliciesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Cloud.Asset.V1p1beta1.IamPolicySearchResult.t()],
          next_page_token: String.t()
        }

  defstruct results: [],
            next_page_token: ""

  field :results, 1, repeated: true, type: Google.Cloud.Asset.V1p1beta1.IamPolicySearchResult
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Asset.V1p1beta1.AssetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.asset.v1p1beta1.AssetService"

  rpc :SearchAllResources,
      Google.Cloud.Asset.V1p1beta1.SearchAllResourcesRequest,
      Google.Cloud.Asset.V1p1beta1.SearchAllResourcesResponse

  rpc :SearchAllIamPolicies,
      Google.Cloud.Asset.V1p1beta1.SearchAllIamPoliciesRequest,
      Google.Cloud.Asset.V1p1beta1.SearchAllIamPoliciesResponse
end

defmodule Google.Cloud.Asset.V1p1beta1.AssetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Asset.V1p1beta1.AssetService.Service
end
