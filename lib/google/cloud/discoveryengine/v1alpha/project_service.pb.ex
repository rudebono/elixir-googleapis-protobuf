defmodule Google.Cloud.Discoveryengine.V1alpha.ReportConsentChangeRequest.ConsentChangeAction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONSENT_CHANGE_ACTION_UNSPECIFIED, 0
  field :ACCEPT, 1
end

defmodule Google.Cloud.Discoveryengine.V1alpha.GetProjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ProvisionProjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :accept_data_use_terms, 2, type: :bool, json_name: "acceptDataUseTerms", deprecated: false

  field :data_use_terms_version, 3,
    type: :string,
    json_name: "dataUseTermsVersion",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ProvisionProjectMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ReportConsentChangeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :consent_change_action, 1,
    type: Google.Cloud.Discoveryengine.V1alpha.ReportConsentChangeRequest.ConsentChangeAction,
    json_name: "consentChangeAction",
    enum: true,
    deprecated: false

  field :project, 2, type: :string, deprecated: false
  field :service_term_id, 3, type: :string, json_name: "serviceTermId", deprecated: false

  field :service_term_version, 4,
    type: :string,
    json_name: "serviceTermVersion",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ProjectService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1alpha.ProjectService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetProject,
      Google.Cloud.Discoveryengine.V1alpha.GetProjectRequest,
      Google.Cloud.Discoveryengine.V1alpha.Project

  rpc :ProvisionProject,
      Google.Cloud.Discoveryengine.V1alpha.ProvisionProjectRequest,
      Google.Longrunning.Operation

  rpc :ReportConsentChange,
      Google.Cloud.Discoveryengine.V1alpha.ReportConsentChangeRequest,
      Google.Cloud.Discoveryengine.V1alpha.Project
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ProjectService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1alpha.ProjectService.Service
end
