defmodule Google.Cloud.Gkehub.V1.ListMembershipsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Gkehub.V1.ListMembershipsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resources: [Google.Cloud.Gkehub.V1.Membership.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct resources: [],
            next_page_token: "",
            unreachable: []

  field :resources, 1, repeated: true, type: Google.Cloud.Gkehub.V1.Membership
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Gkehub.V1.GetMembershipRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Gkehub.V1.CreateMembershipRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          membership_id: String.t(),
          resource: Google.Cloud.Gkehub.V1.Membership.t() | nil,
          request_id: String.t()
        }

  defstruct parent: "",
            membership_id: "",
            resource: nil,
            request_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :membership_id, 2, type: :string, json_name: "membershipId", deprecated: false
  field :resource, 3, type: Google.Cloud.Gkehub.V1.Membership, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Gkehub.V1.DeleteMembershipRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Gkehub.V1.UpdateMembershipRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          resource: Google.Cloud.Gkehub.V1.Membership.t() | nil,
          request_id: String.t()
        }

  defstruct name: "",
            update_mask: nil,
            resource: nil,
            request_id: ""

  field :name, 1, type: :string, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :resource, 3, type: Google.Cloud.Gkehub.V1.Membership, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Gkehub.V1.GenerateConnectManifestRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          namespace: String.t(),
          proxy: binary,
          version: String.t(),
          is_upgrade: boolean,
          registry: String.t(),
          image_pull_secret_content: binary
        }

  defstruct name: "",
            namespace: "",
            proxy: "",
            version: "",
            is_upgrade: false,
            registry: "",
            image_pull_secret_content: ""

  field :name, 1, type: :string, deprecated: false
  field :namespace, 2, type: :string, deprecated: false
  field :proxy, 3, type: :bytes, deprecated: false
  field :version, 4, type: :string, deprecated: false
  field :is_upgrade, 5, type: :bool, json_name: "isUpgrade", deprecated: false
  field :registry, 6, type: :string, deprecated: false

  field :image_pull_secret_content, 7,
    type: :bytes,
    json_name: "imagePullSecretContent",
    deprecated: false
end
defmodule Google.Cloud.Gkehub.V1.GenerateConnectManifestResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          manifest: [Google.Cloud.Gkehub.V1.ConnectAgentResource.t()]
        }

  defstruct manifest: []

  field :manifest, 1, repeated: true, type: Google.Cloud.Gkehub.V1.ConnectAgentResource
end
defmodule Google.Cloud.Gkehub.V1.ConnectAgentResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Gkehub.V1.TypeMeta.t() | nil,
          manifest: String.t()
        }

  defstruct type: nil,
            manifest: ""

  field :type, 1, type: Google.Cloud.Gkehub.V1.TypeMeta
  field :manifest, 2, type: :string
end
defmodule Google.Cloud.Gkehub.V1.TypeMeta do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          api_version: String.t()
        }

  defstruct kind: "",
            api_version: ""

  field :kind, 1, type: :string
  field :api_version, 2, type: :string, json_name: "apiVersion"
end
defmodule Google.Cloud.Gkehub.V1.ListFeaturesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Gkehub.V1.ListFeaturesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resources: [Google.Cloud.Gkehub.V1.Feature.t()],
          next_page_token: String.t()
        }

  defstruct resources: [],
            next_page_token: ""

  field :resources, 1, repeated: true, type: Google.Cloud.Gkehub.V1.Feature
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Gkehub.V1.GetFeatureRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Gkehub.V1.CreateFeatureRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          feature_id: String.t(),
          resource: Google.Cloud.Gkehub.V1.Feature.t() | nil,
          request_id: String.t()
        }

  defstruct parent: "",
            feature_id: "",
            resource: nil,
            request_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :feature_id, 2, type: :string, json_name: "featureId"
  field :resource, 3, type: Google.Cloud.Gkehub.V1.Feature
  field :request_id, 4, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Gkehub.V1.DeleteFeatureRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean,
          request_id: String.t()
        }

  defstruct name: "",
            force: false,
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Gkehub.V1.UpdateFeatureRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          resource: Google.Cloud.Gkehub.V1.Feature.t() | nil,
          request_id: String.t()
        }

  defstruct name: "",
            update_mask: nil,
            resource: nil,
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :resource, 3, type: Google.Cloud.Gkehub.V1.Feature
  field :request_id, 4, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Gkehub.V1.OperationMetadata do
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

  defstruct create_time: nil,
            end_time: nil,
            target: "",
            verb: "",
            status_detail: "",
            cancel_requested: false,
            api_version: ""

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_detail, 5, type: :string, json_name: "statusDetail", deprecated: false
  field :cancel_requested, 6, type: :bool, json_name: "cancelRequested", deprecated: false
  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end
defmodule Google.Cloud.Gkehub.V1.GkeHub.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.gkehub.v1.GkeHub"

  rpc :ListMemberships,
      Google.Cloud.Gkehub.V1.ListMembershipsRequest,
      Google.Cloud.Gkehub.V1.ListMembershipsResponse

  rpc :ListFeatures,
      Google.Cloud.Gkehub.V1.ListFeaturesRequest,
      Google.Cloud.Gkehub.V1.ListFeaturesResponse

  rpc :GetMembership,
      Google.Cloud.Gkehub.V1.GetMembershipRequest,
      Google.Cloud.Gkehub.V1.Membership

  rpc :GetFeature, Google.Cloud.Gkehub.V1.GetFeatureRequest, Google.Cloud.Gkehub.V1.Feature

  rpc :CreateMembership,
      Google.Cloud.Gkehub.V1.CreateMembershipRequest,
      Google.Longrunning.Operation

  rpc :CreateFeature, Google.Cloud.Gkehub.V1.CreateFeatureRequest, Google.Longrunning.Operation

  rpc :DeleteMembership,
      Google.Cloud.Gkehub.V1.DeleteMembershipRequest,
      Google.Longrunning.Operation

  rpc :DeleteFeature, Google.Cloud.Gkehub.V1.DeleteFeatureRequest, Google.Longrunning.Operation

  rpc :UpdateMembership,
      Google.Cloud.Gkehub.V1.UpdateMembershipRequest,
      Google.Longrunning.Operation

  rpc :UpdateFeature, Google.Cloud.Gkehub.V1.UpdateFeatureRequest, Google.Longrunning.Operation

  rpc :GenerateConnectManifest,
      Google.Cloud.Gkehub.V1.GenerateConnectManifestRequest,
      Google.Cloud.Gkehub.V1.GenerateConnectManifestResponse
end

defmodule Google.Cloud.Gkehub.V1.GkeHub.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Gkehub.V1.GkeHub.Service
end
