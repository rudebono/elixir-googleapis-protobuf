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

  defstruct [:scope, :query, :asset_types, :page_size, :page_token, :order_by]

  field :scope, 1, type: :string
  field :query, 2, type: :string
  field :asset_types, 3, repeated: true, type: :string
  field :page_size, 4, type: :int32
  field :page_token, 5, type: :string
  field :order_by, 10, type: :string
end

defmodule Google.Cloud.Asset.V1p1beta1.SearchAllResourcesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Cloud.Asset.V1p1beta1.StandardResourceMetadata.t()],
          next_page_token: String.t()
        }

  defstruct [:results, :next_page_token]

  field :results, 1, repeated: true, type: Google.Cloud.Asset.V1p1beta1.StandardResourceMetadata
  field :next_page_token, 2, type: :string
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

  defstruct [:scope, :query, :page_size, :page_token]

  field :scope, 1, type: :string
  field :query, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Cloud.Asset.V1p1beta1.SearchAllIamPoliciesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Cloud.Asset.V1p1beta1.IamPolicySearchResult.t()],
          next_page_token: String.t()
        }

  defstruct [:results, :next_page_token]

  field :results, 1, repeated: true, type: Google.Cloud.Asset.V1p1beta1.IamPolicySearchResult
  field :next_page_token, 2, type: :string
end
