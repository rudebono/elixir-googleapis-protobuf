defmodule Google.Cloud.Privatecatalog.V1beta1.AssetReference.AssetValidationState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ASSET_VALIDATION_STATE_UNSPECIFIED | :PENDING | :VALID | :INVALID

  field :ASSET_VALIDATION_STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :VALID, 2
  field :INVALID, 3
end
defmodule Google.Cloud.Privatecatalog.V1beta1.SearchCatalogsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: String.t(),
          query: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct resource: "",
            query: "",
            page_size: 0,
            page_token: ""

  field :resource, 1, type: :string, deprecated: false
  field :query, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Privatecatalog.V1beta1.SearchCatalogsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          catalogs: [Google.Cloud.Privatecatalog.V1beta1.Catalog.t()],
          next_page_token: String.t()
        }

  defstruct catalogs: [],
            next_page_token: ""

  field :catalogs, 1, repeated: true, type: Google.Cloud.Privatecatalog.V1beta1.Catalog
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Privatecatalog.V1beta1.SearchProductsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: String.t(),
          query: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct resource: "",
            query: "",
            page_size: 0,
            page_token: ""

  field :resource, 1, type: :string, deprecated: false
  field :query, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Privatecatalog.V1beta1.SearchProductsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          products: [Google.Cloud.Privatecatalog.V1beta1.Product.t()],
          next_page_token: String.t()
        }

  defstruct products: [],
            next_page_token: ""

  field :products, 1, repeated: true, type: Google.Cloud.Privatecatalog.V1beta1.Product
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Privatecatalog.V1beta1.SearchVersionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: String.t(),
          query: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct resource: "",
            query: "",
            page_size: 0,
            page_token: ""

  field :resource, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Privatecatalog.V1beta1.SearchVersionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          versions: [Google.Cloud.Privatecatalog.V1beta1.Version.t()],
          next_page_token: String.t()
        }

  defstruct versions: [],
            next_page_token: ""

  field :versions, 1, repeated: true, type: Google.Cloud.Privatecatalog.V1beta1.Version
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Privatecatalog.V1beta1.Catalog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            display_name: "",
            description: "",
            create_time: nil,
            update_time: nil

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end
defmodule Google.Cloud.Privatecatalog.V1beta1.Product do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          asset_type: String.t(),
          display_metadata: Google.Protobuf.Struct.t() | nil,
          icon_uri: String.t(),
          asset_references: [Google.Cloud.Privatecatalog.V1beta1.AssetReference.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            asset_type: "",
            display_metadata: nil,
            icon_uri: "",
            asset_references: [],
            create_time: nil,
            update_time: nil

  field :name, 1, type: :string, deprecated: false
  field :asset_type, 2, type: :string, json_name: "assetType", deprecated: false

  field :display_metadata, 3,
    type: Google.Protobuf.Struct,
    json_name: "displayMetadata",
    deprecated: false

  field :icon_uri, 4, type: :string, json_name: "iconUri", deprecated: false

  field :asset_references, 10,
    repeated: true,
    type: Google.Cloud.Privatecatalog.V1beta1.AssetReference,
    json_name: "assetReferences",
    deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end
defmodule Google.Cloud.Privatecatalog.V1beta1.AssetReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:asset, String.t()}
            | {:gcs_path, String.t()}
            | {:git_source, Google.Cloud.Privatecatalog.V1beta1.GitSource.t() | nil},
          id: String.t(),
          description: String.t(),
          inputs: Google.Cloud.Privatecatalog.V1beta1.Inputs.t() | nil,
          validation_status:
            Google.Cloud.Privatecatalog.V1beta1.AssetReference.AssetValidationState.t(),
          validation_operation: Google.Longrunning.Operation.t() | nil,
          gcs_source: Google.Cloud.Privatecatalog.V1beta1.GcsSource.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          version: String.t()
        }

  defstruct source: nil,
            id: "",
            description: "",
            inputs: nil,
            validation_status: :ASSET_VALIDATION_STATE_UNSPECIFIED,
            validation_operation: nil,
            gcs_source: nil,
            create_time: nil,
            update_time: nil,
            version: ""

  oneof :source, 0

  field :id, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :inputs, 6, type: Google.Cloud.Privatecatalog.V1beta1.Inputs, deprecated: false

  field :validation_status, 7,
    type: Google.Cloud.Privatecatalog.V1beta1.AssetReference.AssetValidationState,
    json_name: "validationStatus",
    enum: true,
    deprecated: false

  field :validation_operation, 8,
    type: Google.Longrunning.Operation,
    json_name: "validationOperation",
    deprecated: false

  field :asset, 10, type: :string, oneof: 0, deprecated: false
  field :gcs_path, 11, type: :string, json_name: "gcsPath", oneof: 0, deprecated: true

  field :git_source, 15,
    type: Google.Cloud.Privatecatalog.V1beta1.GitSource,
    json_name: "gitSource",
    oneof: 0,
    deprecated: false

  field :gcs_source, 16,
    type: Google.Cloud.Privatecatalog.V1beta1.GcsSource,
    json_name: "gcsSource",
    deprecated: false

  field :create_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :version, 14, type: :string, deprecated: true
end
defmodule Google.Cloud.Privatecatalog.V1beta1.Inputs do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameters: Google.Protobuf.Struct.t() | nil
        }

  defstruct parameters: nil

  field :parameters, 1, type: Google.Protobuf.Struct, deprecated: false
end
defmodule Google.Cloud.Privatecatalog.V1beta1.GcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_path: String.t(),
          generation: integer,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct gcs_path: "",
            generation: 0,
            update_time: nil

  field :gcs_path, 1, type: :string, json_name: "gcsPath", deprecated: false
  field :generation, 2, type: :int64, deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end
defmodule Google.Cloud.Privatecatalog.V1beta1.GitSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ref: {:commit, String.t()} | {:branch, String.t()} | {:tag, String.t()},
          repo: String.t(),
          dir: String.t()
        }

  defstruct ref: nil,
            repo: "",
            dir: ""

  oneof :ref, 0

  field :repo, 1, type: :string
  field :dir, 2, type: :string
  field :commit, 3, type: :string, oneof: 0
  field :branch, 4, type: :string, oneof: 0
  field :tag, 5, type: :string, oneof: 0
end
defmodule Google.Cloud.Privatecatalog.V1beta1.Version do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          asset: Google.Protobuf.Struct.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            description: "",
            asset: nil,
            create_time: nil,
            update_time: nil

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :asset, 3, type: Google.Protobuf.Struct, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end
defmodule Google.Cloud.Privatecatalog.V1beta1.PrivateCatalog.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.privatecatalog.v1beta1.PrivateCatalog"

  rpc :SearchCatalogs,
      Google.Cloud.Privatecatalog.V1beta1.SearchCatalogsRequest,
      Google.Cloud.Privatecatalog.V1beta1.SearchCatalogsResponse

  rpc :SearchProducts,
      Google.Cloud.Privatecatalog.V1beta1.SearchProductsRequest,
      Google.Cloud.Privatecatalog.V1beta1.SearchProductsResponse

  rpc :SearchVersions,
      Google.Cloud.Privatecatalog.V1beta1.SearchVersionsRequest,
      Google.Cloud.Privatecatalog.V1beta1.SearchVersionsResponse
end

defmodule Google.Cloud.Privatecatalog.V1beta1.PrivateCatalog.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Privatecatalog.V1beta1.PrivateCatalog.Service
end
