defmodule Google.Cloud.Clouddms.V1.ListMigrationJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Clouddms.V1.ListMigrationJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :migration_jobs, 1,
    repeated: true,
    type: Google.Cloud.Clouddms.V1.MigrationJob,
    json_name: "migrationJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Clouddms.V1.GetMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.CreateMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :migration_job_id, 2, type: :string, json_name: "migrationJobId", deprecated: false

  field :migration_job, 3,
    type: Google.Cloud.Clouddms.V1.MigrationJob,
    json_name: "migrationJob",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Clouddms.V1.UpdateMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :migration_job, 2,
    type: Google.Cloud.Clouddms.V1.MigrationJob,
    json_name: "migrationJob",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Clouddms.V1.DeleteMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
  field :force, 3, type: :bool
end

defmodule Google.Cloud.Clouddms.V1.StartMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.StopMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.ResumeMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.PromoteMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.VerifyMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.RestartMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.GenerateSshScriptRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :vm_config, 0

  field :migration_job, 1, type: :string, json_name: "migrationJob", deprecated: false
  field :vm, 2, type: :string, deprecated: false

  field :vm_creation_config, 100,
    type: Google.Cloud.Clouddms.V1.VmCreationConfig,
    json_name: "vmCreationConfig",
    oneof: 0

  field :vm_selection_config, 101,
    type: Google.Cloud.Clouddms.V1.VmSelectionConfig,
    json_name: "vmSelectionConfig",
    oneof: 0

  field :vm_port, 3, type: :int32, json_name: "vmPort"
end

defmodule Google.Cloud.Clouddms.V1.VmCreationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :vm_machine_type, 1, type: :string, json_name: "vmMachineType", deprecated: false
  field :vm_zone, 2, type: :string, json_name: "vmZone"
  field :subnet, 3, type: :string
end

defmodule Google.Cloud.Clouddms.V1.VmSelectionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :vm_zone, 1, type: :string, json_name: "vmZone", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.SshScript do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :script, 1, type: :string
end

defmodule Google.Cloud.Clouddms.V1.ListConnectionProfilesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Clouddms.V1.ListConnectionProfilesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :connection_profiles, 1,
    repeated: true,
    type: Google.Cloud.Clouddms.V1.ConnectionProfile,
    json_name: "connectionProfiles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Clouddms.V1.GetConnectionProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.CreateConnectionProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :connection_profile_id, 2,
    type: :string,
    json_name: "connectionProfileId",
    deprecated: false

  field :connection_profile, 3,
    type: Google.Cloud.Clouddms.V1.ConnectionProfile,
    json_name: "connectionProfile",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Clouddms.V1.UpdateConnectionProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :connection_profile, 2,
    type: Google.Cloud.Clouddms.V1.ConnectionProfile,
    json_name: "connectionProfile",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Clouddms.V1.DeleteConnectionProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
  field :force, 3, type: :bool
end

defmodule Google.Cloud.Clouddms.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.DataMigrationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.clouddms.v1.DataMigrationService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListMigrationJobs,
      Google.Cloud.Clouddms.V1.ListMigrationJobsRequest,
      Google.Cloud.Clouddms.V1.ListMigrationJobsResponse

  rpc :GetMigrationJob,
      Google.Cloud.Clouddms.V1.GetMigrationJobRequest,
      Google.Cloud.Clouddms.V1.MigrationJob

  rpc :CreateMigrationJob,
      Google.Cloud.Clouddms.V1.CreateMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :UpdateMigrationJob,
      Google.Cloud.Clouddms.V1.UpdateMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :DeleteMigrationJob,
      Google.Cloud.Clouddms.V1.DeleteMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :StartMigrationJob,
      Google.Cloud.Clouddms.V1.StartMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :StopMigrationJob,
      Google.Cloud.Clouddms.V1.StopMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :ResumeMigrationJob,
      Google.Cloud.Clouddms.V1.ResumeMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :PromoteMigrationJob,
      Google.Cloud.Clouddms.V1.PromoteMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :VerifyMigrationJob,
      Google.Cloud.Clouddms.V1.VerifyMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :RestartMigrationJob,
      Google.Cloud.Clouddms.V1.RestartMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :GenerateSshScript,
      Google.Cloud.Clouddms.V1.GenerateSshScriptRequest,
      Google.Cloud.Clouddms.V1.SshScript

  rpc :ListConnectionProfiles,
      Google.Cloud.Clouddms.V1.ListConnectionProfilesRequest,
      Google.Cloud.Clouddms.V1.ListConnectionProfilesResponse

  rpc :GetConnectionProfile,
      Google.Cloud.Clouddms.V1.GetConnectionProfileRequest,
      Google.Cloud.Clouddms.V1.ConnectionProfile

  rpc :CreateConnectionProfile,
      Google.Cloud.Clouddms.V1.CreateConnectionProfileRequest,
      Google.Longrunning.Operation

  rpc :UpdateConnectionProfile,
      Google.Cloud.Clouddms.V1.UpdateConnectionProfileRequest,
      Google.Longrunning.Operation

  rpc :DeleteConnectionProfile,
      Google.Cloud.Clouddms.V1.DeleteConnectionProfileRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Clouddms.V1.DataMigrationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Clouddms.V1.DataMigrationService.Service
end