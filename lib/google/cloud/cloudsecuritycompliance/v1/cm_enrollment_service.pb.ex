defmodule Google.Cloud.Cloudsecuritycompliance.V1.UpdateCmEnrollmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cm_enrollment, 1,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CmEnrollment,
    json_name: "cmEnrollment",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.CalculateEffectiveCmEnrollmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.CmEnrollment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :enrolled, 2, type: :bool, deprecated: false

  field :audit_config, 3,
    type: Google.Cloud.Cloudsecuritycompliance.V1.AuditConfig,
    json_name: "auditConfig",
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.CalculateEffectiveCmEnrollmentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cm_enrollment, 1,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CmEnrollment,
    json_name: "cmEnrollment"
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.AuditConfig.CmEligibleDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :cm_eligible_destinations, 0

  field :gcs_bucket, 1, type: :string, json_name: "gcsBucket", oneof: 0
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.AuditConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :destinations, 1,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.AuditConfig.CmEligibleDestination,
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.CmEnrollmentService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.cloudsecuritycompliance.v1.CmEnrollmentService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :UpdateCmEnrollment,
      Google.Cloud.Cloudsecuritycompliance.V1.UpdateCmEnrollmentRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.CmEnrollment

  rpc :CalculateEffectiveCmEnrollment,
      Google.Cloud.Cloudsecuritycompliance.V1.CalculateEffectiveCmEnrollmentRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.CalculateEffectiveCmEnrollmentResponse
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.CmEnrollmentService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Cloudsecuritycompliance.V1.CmEnrollmentService.Service
end
