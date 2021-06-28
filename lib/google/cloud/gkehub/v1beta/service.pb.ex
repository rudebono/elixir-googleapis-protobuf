defmodule Google.Cloud.Gkehub.V1beta.ListFeaturesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :order_by, 5, type: :string
end

defmodule Google.Cloud.Gkehub.V1beta.ListFeaturesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resources: [Google.Cloud.Gkehub.V1beta.Feature.t()],
          next_page_token: String.t()
        }

  defstruct [:resources, :next_page_token]

  field :resources, 1, repeated: true, type: Google.Cloud.Gkehub.V1beta.Feature
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Gkehub.V1beta.GetFeatureRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Gkehub.V1beta.CreateFeatureRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          feature_id: String.t(),
          resource: Google.Cloud.Gkehub.V1beta.Feature.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :feature_id, :resource, :request_id]

  field :parent, 1, type: :string
  field :feature_id, 2, type: :string
  field :resource, 3, type: Google.Cloud.Gkehub.V1beta.Feature
  field :request_id, 4, type: :string
end

defmodule Google.Cloud.Gkehub.V1beta.DeleteFeatureRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean,
          request_id: String.t()
        }

  defstruct [:name, :force, :request_id]

  field :name, 1, type: :string
  field :force, 2, type: :bool
  field :request_id, 3, type: :string
end

defmodule Google.Cloud.Gkehub.V1beta.UpdateFeatureRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          resource: Google.Cloud.Gkehub.V1beta.Feature.t() | nil,
          request_id: String.t()
        }

  defstruct [:name, :update_mask, :resource, :request_id]

  field :name, 1, type: :string
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :resource, 3, type: Google.Cloud.Gkehub.V1beta.Feature
  field :request_id, 4, type: :string
end

defmodule Google.Cloud.Gkehub.V1beta.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_detail: String.t(),
          cancel_requested: boolean,
          api_version: String.t()
        }

  defstruct [
    :create_time,
    :end_time,
    :target,
    :verb,
    :status_detail,
    :cancel_requested,
    :api_version
  ]

  field :create_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_detail, 5, type: :string
  field :cancel_requested, 6, type: :bool
  field :api_version, 7, type: :string
end

defmodule Google.Cloud.Gkehub.V1beta.GkeHub.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.gkehub.v1beta.GkeHub"

  rpc :ListFeatures,
      Google.Cloud.Gkehub.V1beta.ListFeaturesRequest,
      Google.Cloud.Gkehub.V1beta.ListFeaturesResponse

  rpc :GetFeature,
      Google.Cloud.Gkehub.V1beta.GetFeatureRequest,
      Google.Cloud.Gkehub.V1beta.Feature

  rpc :CreateFeature,
      Google.Cloud.Gkehub.V1beta.CreateFeatureRequest,
      Google.Longrunning.Operation

  rpc :DeleteFeature,
      Google.Cloud.Gkehub.V1beta.DeleteFeatureRequest,
      Google.Longrunning.Operation

  rpc :UpdateFeature,
      Google.Cloud.Gkehub.V1beta.UpdateFeatureRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Gkehub.V1beta.GkeHub.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Gkehub.V1beta.GkeHub.Service
end
