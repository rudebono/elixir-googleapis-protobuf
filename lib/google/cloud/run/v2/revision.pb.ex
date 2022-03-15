defmodule Google.Cloud.Run.V2.GetRevisionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Run.V2.ListRevisionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          show_deleted: boolean
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            show_deleted: false

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :show_deleted, 4, type: :bool, json_name: "showDeleted"
end
defmodule Google.Cloud.Run.V2.ListRevisionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          revisions: [Google.Cloud.Run.V2.Revision.t()],
          next_page_token: String.t()
        }

  defstruct revisions: [],
            next_page_token: ""

  field :revisions, 1, repeated: true, type: Google.Cloud.Run.V2.Revision
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Run.V2.DeleteRevisionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          validate_only: boolean,
          etag: String.t()
        }

  defstruct name: "",
            validate_only: false,
            etag: ""

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
  field :etag, 3, type: :string
end
defmodule Google.Cloud.Run.V2.Revision.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Run.V2.Revision.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Run.V2.Revision do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          uid: String.t(),
          generation: integer,
          labels: %{String.t() => String.t()},
          annotations: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          delete_time: Google.Protobuf.Timestamp.t() | nil,
          expire_time: Google.Protobuf.Timestamp.t() | nil,
          launch_stage: Google.Api.LaunchStage.t(),
          service: String.t(),
          scaling: Google.Cloud.Run.V2.RevisionScaling.t() | nil,
          vpc_access: Google.Cloud.Run.V2.VpcAccess.t() | nil,
          container_concurrency: integer,
          timeout: Google.Protobuf.Duration.t() | nil,
          service_account: String.t(),
          containers: [Google.Cloud.Run.V2.Container.t()],
          volumes: [Google.Cloud.Run.V2.Volume.t()],
          confidential: boolean,
          execution_environment: Google.Cloud.Run.V2.ExecutionEnvironment.t(),
          encryption_key: String.t(),
          reconciling: boolean,
          conditions: [Google.Cloud.Run.V2.Condition.t()],
          observed_generation: integer,
          log_uri: String.t(),
          etag: String.t()
        }

  defstruct name: "",
            uid: "",
            generation: 0,
            labels: %{},
            annotations: %{},
            create_time: nil,
            update_time: nil,
            delete_time: nil,
            expire_time: nil,
            launch_stage: :LAUNCH_STAGE_UNSPECIFIED,
            service: "",
            scaling: nil,
            vpc_access: nil,
            container_concurrency: 0,
            timeout: nil,
            service_account: "",
            containers: [],
            volumes: [],
            confidential: false,
            execution_environment: :EXECUTION_ENVIRONMENT_UNSPECIFIED,
            encryption_key: "",
            reconciling: false,
            conditions: [],
            observed_generation: 0,
            log_uri: "",
            etag: ""

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :generation, 3, type: :int64, deprecated: false
  field :labels, 4, repeated: true, type: Google.Cloud.Run.V2.Revision.LabelsEntry, map: true

  field :annotations, 5,
    repeated: true,
    type: Google.Cloud.Run.V2.Revision.AnnotationsEntry,
    map: true

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :expire_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :launch_stage, 10, type: Google.Api.LaunchStage, json_name: "launchStage", enum: true
  field :service, 11, type: :string, deprecated: false
  field :scaling, 12, type: Google.Cloud.Run.V2.RevisionScaling
  field :vpc_access, 13, type: Google.Cloud.Run.V2.VpcAccess, json_name: "vpcAccess"
  field :container_concurrency, 14, type: :int32, json_name: "containerConcurrency"
  field :timeout, 15, type: Google.Protobuf.Duration
  field :service_account, 16, type: :string, json_name: "serviceAccount"
  field :containers, 17, repeated: true, type: Google.Cloud.Run.V2.Container
  field :volumes, 18, repeated: true, type: Google.Cloud.Run.V2.Volume
  field :confidential, 19, type: :bool

  field :execution_environment, 20,
    type: Google.Cloud.Run.V2.ExecutionEnvironment,
    json_name: "executionEnvironment",
    enum: true

  field :encryption_key, 21, type: :string, json_name: "encryptionKey", deprecated: false
  field :reconciling, 30, type: :bool, deprecated: false
  field :conditions, 31, repeated: true, type: Google.Cloud.Run.V2.Condition, deprecated: false
  field :observed_generation, 32, type: :int64, json_name: "observedGeneration", deprecated: false
  field :log_uri, 33, type: :string, json_name: "logUri", deprecated: false
  field :etag, 99, type: :string, deprecated: false
end
defmodule Google.Cloud.Run.V2.Revisions.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.run.v2.Revisions"

  rpc :GetRevision, Google.Cloud.Run.V2.GetRevisionRequest, Google.Cloud.Run.V2.Revision

  rpc :ListRevisions,
      Google.Cloud.Run.V2.ListRevisionsRequest,
      Google.Cloud.Run.V2.ListRevisionsResponse

  rpc :DeleteRevision, Google.Cloud.Run.V2.DeleteRevisionRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Run.V2.Revisions.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Run.V2.Revisions.Service
end
